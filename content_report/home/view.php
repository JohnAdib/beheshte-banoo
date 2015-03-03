<?php
namespace content_report\home;

class view extends \mvc\view
{
	function config()
	{
		$this->include->chart = true;
		$mychild              = $this->child();
		$mylist               = $this->model()->mylist();
		$mydateCount          = $this->model()->mydateCount();
		$this->global->title  = T_('Visitor report').($mychild? (' '.T_('by').' '.T_($mychild)):'');
		$chart_labels         = array();
		$chart_series         = array();
		$counter              = 0;


		if($mydateCount <= 1)
		{
			$this->data->error = T_("Chart must be contain at least 2 column!");
			// return;
		}

		foreach ($mylist as $value)
		{
			// if date not exist in labels add it and add counter
			if(!in_array($value['date'], $chart_labels))
			{
				array_push($chart_labels, $value['date']);
				$counter ++;
			}

			if($mychild)
			{
				if(empty($value[$mychild]))
				{
					if($mychild === 'province')
						$myname = T_('Foreign');
					else
						$myname = T_('Unknown');
				}
				else
				{
					if($mychild === 'birthdate')
					{
						if($value[$mychild] == 0)
							$myname   = T_('Empty');
						else
						{
							$from     = new \DateTime($value[$mychild]);
							$to       = new \DateTime('today');
							$myname   = $from->diff($to)->y .' '.T_('years old');
						}
					}
					// return the name of provinces
					elseif($mychild === 'province')
						$myname = $this->model()->myprovinceName($value[$mychild]);
					else
						$myname = T_($value[$mychild]);
				}
			}
			else
				$myname = T_('Visitors');

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