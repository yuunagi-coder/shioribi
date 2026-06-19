document.addEventListener('turbo:load', function(){
	// Turn.jsの初期化
  	const $flipbook = $('#flipbook');
  
  	// 既に初期化されていたら破棄（重複防止）
  	if ($flipbook.data('turned')) {
    	$flipbook.turn('destroy');
  	}

	$('#flipbook').turn({
            autoCenter: true,
			elevation: 50,
			duration: 1000,
			gradients: true,
			direction: 'rtl',
			display: 'single',
	});

	$flipbook.data('turned', true);

	// ブラウザの幅が変更されたときに実行
	$(window).on('resize', function() {
    	$('#flipbook').turn('size', window.innerWidth, window.innerHeight);
	});

	// ボタンイベント
	$('#prepage').off('click').on('click', function(){
    	$flipbook.turn('previous');
	});
  
	$('#nextpage').off('click').on('click', function(){
    	$flipbook.turn('next');
	});
});
