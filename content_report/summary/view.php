<?php
namespace content_report\summary;

class view extends \mvc\view
{
	function config()
	{
		$this->include->chart = true;
		$mychild              = $this->child();
		$this->global->title  = T_('Visitor report summary');

		// line 1
		$this->data->user['admin']    = $this->model()->total_Type('1');
		$this->data->user['register'] = $this->model()->total_Type('2');
		$this->data->user['booth']    = $this->model()->total_Type('3');
		$this->data->user['visitor']  = $this->model()->total_Type('4');
		$this->data->user['kid']      = $this->model()->total_Type('5');

		$this->data->booth['total']   = $this->model()->total('booths');
		$this->data->section['total'] = $this->model()->total('sections');


		// line 2
		$this->data->game['prizes']       = $this->model()->total_points();
		$this->data->game['maxpoint']     = $this->model()->max_point();
		$this->data->game['averagepoint'] = $this->model()->average_points();

		$this->data->user['total']        = $this->model()->total('users');
		$this->data->user['days']         = $this->model()->user_days();
		
		
	}
}
?>