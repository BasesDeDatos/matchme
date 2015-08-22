
		</div>
	</div>
	<div class="footer">
		<p>© 2015 Ask UI Kit . All Rights Reserved | Template by  <a href="http://w3layouts.com/">  W3layouts</a></p>
	</div>

	<script src="js/jquery-1.11.1.min.js"></script>
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="js/jquery.jplayer.min.js"></script>


	
	<!----Calender -------->
	<script src="js/underscore-min.js"></script>
	<script src="js/moment-2.2.1.js"></script>
	<script src="js/clndr.js"></script>
	<script src="js/site.js"></script>
	<!----End Calender -------->

	 
	<script src="js/modernizr.custom.js"></script>
    	
    <script src="js/bootstrap.js"> </script>
    
    <script src="js/jquery.nouislider.js"></script>
    
    <script type="text/javascript" src="js/fd-slider.js"></script>

	<script src="js/jquery.circlechart.js"></script>
	
	<script type="text/javascript" src="js/move-top.js"></script>
	
	<script type="text/javascript" src="js/easing.js"></script>	
	<!-- script-for-menu -->
	
	<script src="js/jquery.flot.min.js"></script>
	
	<script type="text/javascript">
		jQuery(document).ready(function(){
			
			$( "span.menu" ).click(function() {
				$( "ul.nav1" ).slideToggle( 300, function() {
				// Animation complete.
				});
			});
			
			 $( "span.menu2" ).click(function() {
			 	$( "ul.effct1" ).slideToggle( 300, function() {
			 	// Animation complete.
			 	});
			 });
			
			$('.demo-1').percentcircle({
				animate : false,
				diameter : 100,
				guage: 3,
				coverBg: '#fff',
				bgColor: '#d9d9d9',
				fillColor: '#1da1f4',
				percentSize: '15px',
				percentWeight: 'normal'
			});

			$('.demo-2').percentcircle({
				animate : false,
				diameter : 100,
				guage: 3,
				coverBg: '#fff',
				bgColor: '#d9d9d9',
				fillColor: '#562b1a',
				percentSize: '15px',
				percentWeight: 'normal'
			});

			$('.demo-3').percentcircle({
				animate : false,
				diameter : 100,
				guage: 3,
				coverBg: '#fff',
				bgColor: '#a6192e',
				fillColor: '#E64608',
				percentSize: '18px',
				percentWeight: 'normal'
			});
			
			$("#jquery_jplayer_1").jPlayer({
				ready: function () {
					$(this).jPlayer("setMedia", {
						title: "Big Buck Bunny",
						m4v: "http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v",
						poster: "http://www.jplayer.org/video/poster/Big_Buck_Bunny_Trailer_480x270.png"
					});
				},
				swfPath: "../../dist/jplayer",
				supplied: "m4v",
				size: {
					width: "379px",
					height: "250px",
					cssClass: "jp-video-360p"
				},
				useStateClassSkin: true,
				autoBlur: false,
				smoothPlayBar: true,
				keyEnabled: true,
				remainingDuration: true,
				toggleDuration: true
			});
			
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
			
			 $( "span.menu3" ).click(function() {
			 	$( "ul.effct2" ).slideToggle( 300, function() {
			 	// Animation complete.
				});
			 });
			 
			 $("#slider").noUiSlider({
				start: [20, 80],
				connect: true,
				range: {
					'min': 0,
					'max': 100
				}
			});
			
		});
	</script>
	
	<script>
		jQuery(document).ready(function () {
		
			// Graph Data ##############################################
			var graphData = [{
					// Returning Visits
					data: [ [6, 4500], [7,3500], [8, 6550], [9, 7600], ],
					color: '#59676B',
					points: { radius: 4, fillColor: '#59676B' }
				}
			];
		
			// Lines Graph #############################################
			$.plot($('#graph-lines'), graphData, {
				series: {
					points: {
						show: true,
						radius: 1
					},
					lines: {
						show: true
					},
					shadowSize: 0
				},
				grid: {
					color: '#59676B',
					borderColor: 'transparent',
					borderWidth: 10,
					hoverable: true
				},
				xaxis: {
					tickColor: 'transparent',
					tickDecimals: false
				},
				yaxis: {
					tickSize: 1200
				}
			});
		
			// Bars Graph ##############################################
			$.plot($('#graph-bars'), graphData, {
				series: {
					bars: {
						show: true,
						barWidth: .9,
						align: 'center'
					},
					shadowSize: 0
				},
				grid: {
					color: '#fff',
					borderColor: 'transparent',
					borderWidth: 20,
					hoverable: true
				},
				xaxis: {
					tickColor: 'transparent',
					tickDecimals: 2
				},
				yaxis: {
					tickSize: 1000
				}
			});
		
			// Graph Toggle ############################################
			$('#graph-bars').hide();
		
			$('#lines').on('click', function (e) {
				$('#bars').removeClass('active');
				$('#graph-bars').fadeOut();
				$(this).addClass('active');
				$('#graph-lines').fadeIn();
				e.preventDefault();
			});
		
			$('#bars').on('click', function (e) {
				$('#lines').removeClass('active');
				$('#graph-lines').fadeOut();
				$(this).addClass('active');
				$('#graph-bars').fadeIn().removeClass('hidden');
				e.preventDefault();
			});
		
			// Tooltip #################################################
			function showTooltip(x, y, contents) {
				$('<div id="tooltip">' + contents + '</div>').css({
					top: y - 16,
					left: x + 20
				}).appendTo('body').fadeIn();
			}
		
			var previousPoint = null;
		
			$('#graph-lines, #graph-bars').bind('plothover', function (event, pos, item) {
				if (item) {
					if (previousPoint != item.dataIndex) {
						previousPoint = item.dataIndex;
						$('#tooltip').remove();
						var x = item.datapoint[0],
							y = item.datapoint[1];
							showTooltip(item.pageX, item.pageY, y+ x );
					}
				} else {
					$('#tooltip').remove();
					previousPoint = null;
				}
			});
		
		});
		</script>


</body>
</html>