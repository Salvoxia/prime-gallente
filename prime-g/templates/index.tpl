<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" dir="ltr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="description" content="EDK Killboard - {$config->get('cfg_kbtitle')}" />
	<meta name="keywords" content="EDK, killboard, {$config->get('cfg_kbtitle')}, {if $kb_owner}{$kb_owner}, {/if}Eve-Online, killmail" />
	<title>{$kb_title}</title>
	<link rel="stylesheet" type="text/css" href="{$theme_url}/{$style}.css" />
{$page_headerlines}
	<script type="text/javascript" src="{$kb_host}/themes/generic.js"></script>
</head>
<body {$on_load} style="height: 100%">
{$page_bodylines}
	<div id="popup"></div>
	<div id="stuff1"></div>
	<div id="stuff2"></div>
	<div id="stuff3"></div>
	<div id="stuff4"></div>
	<div id="toparea">
{if $banner}		<div id="topbox" class="wrapper">
{if $bannerswf=='true'}
			<object type="application/x-shockwave-flash" data="{$kb_host}/banner/{$banner}" height="200" width="1000">
				<param name="movie" value="myFlashMovie.swf" />
			</object>
{else}
		<a href="{if $banner_link}{$banner_link}{else}?a=home{/if}">
			<img src="{$kb_host}/banner/{$banner}" alt="Banner" {if $banner_x && $banner_y}width = "{$banner_x}" height="{$banner_y}"{/if} />
		</a>
{/if}

			</div>
{/if}
		</div>
	<div align="center" id="popup" style="display:none;
		position:absolute;
		top:217px; width:99%;
		z-index:3;
		padding: 5px;">
	</div>
<div id="bodyboxb" class="boxwrapper">
        <div id="bdybox-lb">
                <div id="bdybox-bb">
                        <div id="bdybox-brb">
                                <div id="bdybox-blb">
                                        <div id="bdybox-tb">
                                                <div id="bdybox-trb">
                                                        <div id="bdybox-tlb">
														
	<div id="main">
		<div id="header">
{if $bannerswf=='true'}
		<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" WIDTH="1000" HEIGHT="200" id="{$banner}" ALIGN="">
		<PARAM NAME=movie VALUE="{$kb_host}/banner/{$banner}"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=black> <EMBED src="banner/{$banner}" quality=high bgcolor=black WIDTH="1000" HEIGHT="200" NAME="{$banner}" ALIGN="" TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer"></EMBED> </OBJECT>
{else}
		<a href="{if $banner_link}{$banner_link}{else}?a=home{/if}">
			<img src="{$kb_host}/banner/{$banner}" border="0" alt="Banner" {if $banner_x && $banner_y}width = "{$banner_x}" height="{$banner_y}"{/if} />
		</a>
{/if}
		</div>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="toolbarwrap">
	<div id="toolbar-l">
        	<div id="toolbar-r">
                	<div id="toolbar">
                	<div id="topmenu">
					
					
		<div class="navigation">
			<table class="navigation" width="100%" style="height:25px;" border="0" cellspacing="1">
				<tr class="kb-table-row-odd">
		{section name=item loop=$menu}
					<td width="{$menu_w}" align="center"><a class="link" style="display: block;" href="{$menu[item].link}">{$menu[item].text}</a></td>
		{/section}
				</tr>
			</table>

                        </div>
                        </div>
                </div>
		</div>
</div>
<div id="bodybox" class="boxwrapper">
	<div id="bdybox-l">
		<div id="bdybox-b">
			<div id="bdybox-br">
				<div id="bdybox-bl">
					<div id="bdybox-t">
						<div id="bdybox-tr">
							<div id="bdybox-tl">
{if $message}
		<div id="boardmessage">{$message}</div>
{/if}
		<div id="page-title">{$page_title}</div>
		<div id="content">
{$content_html}
		</div>
{if $context_html}
		<div id="context">
{$context_html}
		</div>
{/if}
{if $profile}
		<div id="profile"><!-- profile -->{$profile_sql} queries{if $profile_sql_cached} (+{$profile_sql_cached} cached) {/if} SQL time {$sql_time}s, Total time {$profile_time}s<!-- /profile --></div>
{/if}
	<div class="counter"></div><div id="footerarea">
		<span class="smalltext"><font size="1">Prime theme by <a href="http://gate.eveonline.com/profile/vecati">Vecati</a></font><br/>
		
	</span>
	</div>
		<div class="counter"></div>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
