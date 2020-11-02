<?php
/**
 * 
 * @package     Joomla.Administrator
 * @subpackage  com_groupbuy
 * 
 */

// Stop direct access of file 阻止直接存取文件
defined('_JEXEC') or die('Restricted access');
?>
<form action="index.php?option=com_groupbuy&view=groupbuys" method="post" id="GroupbuyAdminForm" name="GroupbuyAdminForm">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th><?php echo JText::_('活動編號'); ?></th>
				<th><?php echo JText::_('活動名稱'); ?></th>
				<th><?php echo JText::_('活動簡介'); ?></th>
				<th><?php echo JText::_('活動內容'); ?></th>
				<th><?php echo JText::_('活動時間'); ?></th>
				<th><?php echo JText::_('活動地點'); ?></th>
				<th><?php echo JText::_('人數上限'); ?></th>
				<th><?php echo JText::_('人數下限'); ?></th>
				<th><?php echo JText::_('活動價格'); ?></th>
				<th><?php echo JText::_('管理活動'); ?></th>
				<th><?php echo JText::_('查看人數'); ?></th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="11">
					<?php echo $this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
			<?php if (!empty($this->items)) : ?>
				<?php foreach ($this->items as $i => $row) : ?>

					<tr>
						<td>
							<?php echo $row->act_id; ?>
						</td>
						<td>
							<?php echo $row->act_name; ?>
						</td>
						<td>
							<?php echo $row->act_intro; ?>
						</td>
						<td>
							<?php echo $row->act_content; ?>
						</td>
						<td>
							<?php echo $row->act_time; ?>
						</td>
						<td>
							<?php echo $row->act_loc; ?>
						</td>
						<td>
							<?php echo $row->act_upper ?>
						</td>
						<td>
							<?php echo $row->act_lower ?>
						</td>
						<td>
							<?php echo $row->act_price ?>
						</td>
						<td>
							<?php  ?>
						</td>
						<td>
							<?php  ?>
						</td>
					</tr>
				<?php endforeach; ?>
			<?php endif; ?>
		</tbody>
	</table>
</form>