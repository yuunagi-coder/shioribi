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

$(function(){
	$('#top_turn').turn(
		{
			elevation: 50,
			duration: 1000,
			gradients: true,
			autoCenter: false,
			direction: 'rtl',
		}
	);
	
	$('#prevpage').click(function(){
		$('#top_turn').turn('previous')
	});
	
	$('#nextpage').click(function(){
		$('#top_turn').turn('next');
	});
});

