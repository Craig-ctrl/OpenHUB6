m = Map("alarm-notify", translate("Notification Settings"), translate(""))

d = m:section(TypedSection, "info", "Pushover"); d.anonymous=true;
a = d:option(Value, "push_user_key", "Pushover User Key"); a.optional=false; a.rmempty = false;
a = d:option(Value, "push_api_key", "Pushover API Token/Key"); a.optional=false; a.rmempty = false;

t = m:section(TypedSection, "info", "Telegram"); t.anonymous=true;
a = t:option(Value, "tel_api_token", "Telegram API Token"); a.optional=false; a.rmempty = false;
a = t:option(Value, "tel_chatid", "Telegram Chat ID"); a.optional=false; a.rmempty = false;

s = m:section(TypedSection, "info", "Home Assistant"); s.anonymous=true;
a = s:option(Value, "ha_ip", "HA MQTT IP Address"); a.optional=false; a.rmempty=false;
a = s:option(Value, "ha_port", "HA MQTT Port"); a.optional=false; a.rmempty=false;
a = s:option(Value, "ha_user", "HA MQTT User Name"); a.optional=false; a.rmempty=false;
a = s:option(Value, "ha_pass", "HA MQTT Password"); a.optional=false; a.rmempty=false; a.password=true;

return m
