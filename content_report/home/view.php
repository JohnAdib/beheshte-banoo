<?php
namespace content_report\home;

class view extends \mvc\view
{
	function config()
	{
		$this->include->chart = true;
		$this->global->title  = T_('Reports');
		$mychild              = $this->child();
		$mylist               = $this->model()->mylist();
		$mydateCount          = $this->model()->mydateCount();
		$chart_labels         = array();
		$chart_series         = array();
		$counter              = 0;


		foreach ($mylist as $value)
		{
			// if date not exist in labels add it and add counter
			if(!in_array($value['date'], $chart_labels))
			{
				array_push($chart_labels, $value['date']);
				$counter ++;
			}

			if($mychild)
				$myname = $value[$mychild];
			else
				$myname = 'All';
			// if type not exits add it to array and fill with zero
			if(!array_key_exists($myname, $chart_series))
			{
				$chart_series[$myname] = array_fill(1, $mydateCount, '0');
			}

			// push value of series in array
			$chart_series[$myname][$counter] = $value['value'];
		}
		// var_dump($mylist);
		// var_dump($chart_labels);
		// var_dump($chart_series);

		$this->data->chart_labels = $chart_labels;
		$this->data->chart_series = $chart_series;
	}
}
?>