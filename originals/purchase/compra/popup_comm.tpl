function open_popup_comm(popup_action,name,window_properties)
	{
	var popup_window_id;
	popup_window_id=window.open(popup_action,name,window_properties);
	popup_window_id.focus();
//	popup_window_id.top.document.title='{TITLE}';
	}

open_popup_comm('{ACTION}','{NAME}','{PROP}');

