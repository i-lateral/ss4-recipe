<% include Banner %>
<div class="row">
	<% if $Menu(2) || $SideBarView.Widgets %>
		<% include SideBar %>
	<% end_if %>
	<div class="col-sm content" role="main">
		<div class="row justify-content-md-center">
			<div class="col-md-10 col-lg-8">
				$Content
			</div>
		</div>
		$Form
		$PageComments
	</div>
</div>
<% if $RenderedSections %>
	<% loop $RenderedSections %>
		<div class="section $EvenOdd pos-$Pos" id="$URLSegment">
			$Layout.RAW
		</div>
	<% end_loop %>
<% end_if %>