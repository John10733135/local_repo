<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_groupbuy
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * HTML View class for the groupbuy Component
 *
 * @since  0.0.1
 */
class GroupBuyViewGroupBuy extends JViewLegacy
{
	/**
	 * Display the Hello World view
	 *
	 * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
	 *
	 * @return  void
	 */
	function display($tpl = null)
	{
		// Assign data to the view
		$this->msg = 'Group Buy';

		// Display the view
		parent::display($tpl);
	}
}