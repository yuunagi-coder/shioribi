// 文字を順番に浮かび上がらせるアニメーション
document.addEventListener('turbo:load', function(){
	document.querySelectorAll('.quote_content').forEach(el => {
	  const text = el.textContent;
	  el.textContent = '';
	
	  [...text].forEach((char, i) => {
		const span = document.createElement('span');
		span.textContent = char === ' ' ? '\u00A0' : char;
		span.style.animationDelay = `${i * 0.08}s`;
		el.appendChild(span);
	  });
	});
});



