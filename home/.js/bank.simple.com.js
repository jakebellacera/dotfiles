/*
 * Hide the Safe To Spend banner by default
 * ========================================
 * To toggle the Safe To Spend banner, press "e".
 */

var safeToSpend,
	isHidden;

document.addEventListener('keydown', function (e) {
	safeToSpend = document.querySelectorAll('#safe-to-spend > .row')[0];
	isHidden = safeToSpend.style.opacity === '0';

	if (e.keyCode === 69) { // the 'e' key
		if (isHidden) {
			safeToSpend.style.opacity = '1';
		} else {
			safeToSpend.style.opacity = '0';
		}
	}
}, false);
