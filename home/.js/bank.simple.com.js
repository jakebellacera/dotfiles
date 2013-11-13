/*
 * Hide the Safe To Spend banner by default
 * ========================================
 * To toggle the Safe To Spend banner, press "e".
 */

var safeToSpend = document.querySelectorAll('#safe-to-spend > .row')[0],
	isHidden = true;

safeToSpend.style.opacity = '0';
safeToSpend.style.transition = 'opacity 200ms linear';

document.addEventListener('keydown', function (e) {
	if (e.keyCode === 69) { // the 'e' key
		if (isHidden) {
			safeToSpend.style.opacity = '1';
		} else {
			safeToSpend.style.opacity = '0';
		}

		isHidden = !isHidden; // invert
	}
}, false);
