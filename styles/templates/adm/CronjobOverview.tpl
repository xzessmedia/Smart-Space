{include file="overall_header.tpl"}


							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-table"></i> </span>
									<h2>&nbsp</h2>

								</header>

								<!-- widget div-->
								<div>

									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->

									</div>
									<!-- end widget edit box -->

									<!-- widget content -->
									<div class="widget-body">
										
										<div class="table-responsive">
										<form action="" method="post" name="countt">
											<table class="table table-bordered">
												<thead>
												
												
<tr>
	<th>{$LNG.cronjob_id}</th>
	<th>{$LNG.cronjob_name}</th>
	<th>{$LNG.cronjob_min}</th>
	<th>{$LNG.cronjob_hours}</th>
	<th>{$LNG.cronjob_dom}</th>
	<th>{$LNG.cronjob_month}</th>
	<th>{$LNG.cronjob_dow}</th>
	<th>{$LNG.cronjob_class}</th>
	<th>{$LNG.cronjob_nextTime}</th>
	<th>{$LNG.cronjob_inActive}</th>
	<th>{$LNG.cronjob_lock}</th>
	<th>{$LNG.cronjob_edit}</th>
	<th>{$LNG.cronjob_delete}</th>
</tr>
{foreach item=CronjobInfo from=$CronjobArray}
<tr>
	<td>{$CronjobInfo.id}</td>
	<td>{if isset($LNG.cronName[$CronjobInfo.name])}{$LNG.cronName[$CronjobInfo.name]}{else}{$CronjobInfo.name}{/if}</td>
	<td>{$CronjobInfo.min}</td>
	<td>{$CronjobInfo.hours}</td>
	<td>{$CronjobInfo.dom}</td>
	<td>{if $CronjobInfo.month == '*'}{$CronjobInfo.month}{else}{foreach item=month from=$CronjobInfo.month}{$LNG.months.{$month-1}}{/foreach}{/if}</td>
	<td>{if $CronjobInfo.dow == '*'}{$CronjobInfo.dow}{else}{foreach item=d from=$CronjobInfo.dow}{$LNG.week_day.{$d}} {/foreach}{/if}</td>
	<td>{$CronjobInfo.class}</td>
	<td>{if $CronjobInfo.isActive}{date($LNG.php_tdformat, $CronjobInfo.nextTime)}{else}-{/if}</td>
	<td><a href="admin.php?page=cronjob&amp;id={$CronjobInfo.id}&amp;active={if $CronjobInfo.isActive}0" style="color:lime">{$LNG.cronjob_inactive}{else}1" style="color:red">{$LNG.cronjob_active}{/if}</a></td>
	<td><a href="admin.php?page=cronjob&amp;id={$CronjobInfo.id}&amp;lock={if $CronjobInfo.lock}0" style="color:red">{$LNG.cronjob_is_lock}{else}1" style="color:lime">{$LNG.cronjob_is_unlock}{/if}</a></td>
	<td><a href="admin.php?page=cronjob&detail={$CronjobInfo.id}"><img src="./styles/resource/images/admin/GO.png"></a></td>
	<td><a href=""><img src="./styles/resource/images/false.png" width="16" height="16"></a></td>
</tr>
{/foreach}
<tr>
<td colspan="13"><a href="admin.php?page=cronjob&detail=add">{$LNG.cronjob_new}</a></td>
</tr>
												
												
												</thead>
											</table>
										</div>
									</div>
									<!-- end widget content -->

								</div>
								<!-- end widget div -->

							</div>
							<!-- end widget -->


{include file="overall_footer.tpl"}