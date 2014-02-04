var djs = djs || {};

(function (self) {
  function toggleNode (node) {
    if (node.length != null) {
      for (var i = 0; i < node.length; i++) {
        toggleNode(node[i]);
      }
    } else {
      if (node.style.display !== "none") {
        node.style.display = "none";
      } else {
        node.style.display = "";
      }
    }
  };

  self.init = function () {
    self.triggerDiffViews();
  };

  // Expands/contracts file diffs within commit views. This helps reduce the
  // amount of clutter seen on large commits.
  //
  // Currently only source files (code, not images/data visualizations) with
  // diffs that aren't empty (i.e. moved files) will toggle.
  // 
  // Do note that this only happens on page load, _not_ on pjax:end, so you
  // will need to refresh the page when viewing a commit if the buttons aren't
  // showing up.
  self.triggerDiffViews = function () {
    var diffView = document.getElementById('diff'),
        hideAllLink,
        hideLink,
        files,
        clonedLink,
        fileCodeView,
        toggleableFiles = [];

    // the diff viewer could be in one of these nodes...
    if (diffView === null) diffView = document.getElementById('js-repo-pjax-container');

    if (diffView != null) {
      files = diffView.querySelectorAll('#files .file');

      // Create and append the hide all link
      if (files.length > 1) {
        hideAllLink = document.createElement('a');
        hideAllLink.className = "dotjs-hidelink-all minibutton";
        hideAllLink.style.marginRight = "10px";
        hideAllLink.textContent = "Toggle All Files";
        diffView.querySelector('#toc').children[0].appendChild(hideAllLink);
      }

      // Crete the hide link that will be cloned into each file
      hideLink = document.createElement('a');
      hideLink.className = "dotjs-hidelink minibutton leftwards";
      hideLink.textContent = "Toggle";

      for (var i = 0; i < files.length; i++) {
        clonedLink = hideLink.cloneNode(true);
        clonedLink.setAttribute('data-file', 'diff-' + i);

        fileCodeView = files[i].querySelector('.data.highlight');

        if (fileCodeView != null && !fileCodeView.classList.contains('empty')) {
          files[i].querySelector('.meta .actions .button-group').appendChild(clonedLink);
          toggleableFiles.push(fileCodeView);
        }
      }

      // Bind click event to toggle buttons
      diffView.addEventListener('click', function (e) {
        var file, fileData;

        // Individual file toggle button
        if (e.target && e.target.classList.contains('dotjs-hidelink')) {
          file = document.getElementById(e.target.getAttribute('data-file'));
          fileData = file.querySelector('.data.highlight');
          toggleNode(fileData);

        // Filter all button
        } else if (e.target && e.target.classList.contains('dotjs-hidelink-all')) {
          toggleNode(toggleableFiles);
        }
      });

      // Hide all files if there are too many to display at once
      if (files.length > 50) {
        toggleNode(toggleableFiles);
      }
    }
  };
}(djs.github = {}));

djs.github.init();
