--------------------------------------------------------------------------------
-- Powered by KevinTech.
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>24462430743205919374
,p_default_application_id=>1000
,p_default_id_offset=>0
,p_default_owner=>'KEVINTECH'
);
end;
/
 
prompt APPLICATION 1000 - KevinTech | Plug-ins
--
-- Application Export:
--   Application:     1000
--   Name:            KevinTech | Plug-ins
--   Date and Time:   19:10 Sunday August 25, 2024
--   Exported By:     KEVINTECH
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 272410883923726626
--   Manifest End
--   Version:         23.1.0
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/ninja_kevintech_lottie_action
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(272410883923726626)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NINJA.KEVINTECH.LOTTIE_ACTION'
,p_display_name=>'Lottie Animation Action (Play/Pause)'
,p_category=>'EXECUTE'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION render(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                p_plugin         IN apex_plugin.t_plugin )',
'RETURN apex_plugin.t_dynamic_action_render_result',
'IS',
'  l_action_type       VARCHAR2(4000)  := p_dynamic_action.attribute_01;',
'  l_result            apex_plugin.t_dynamic_action_render_result;',
'BEGIN',
'  l_result.attribute_01 := l_action_type;',
'',
'  apex_javascript.add_library(p_name      => ''ninja.kevintech.lottie_action'',',
'                              p_directory => p_plugin.file_prefix,',
'                              p_key       => ''ninja.kevintech.lottie_action'');',
'',
'  l_result.javascript_function := q''~ninja_kevintech_lottie_action~'';',
'',
'  RETURN l_result;',
'END render;'))
,p_default_escape_mode=>'HTML'
,p_api_version=>2
,p_render_function=>'render'
,p_standard_attributes=>'REGION:JQUERY_SELECTOR:JAVASCRIPT_EXPRESSION:REQUIRED:ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Lottie Animation Plugin for Oracle APEX (Dynamic Action)</b>',
'',
'Easily interact with your Lottie Animations Region/Template Component Plug-Ins.'))
,p_version_identifier=>'1.0'
,p_about_url=>'https://kevintech.ninja/'
,p_files_version=>113
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(272417889444762663)
,p_plugin_id=>wwv_flow_imp.id(272410883923726626)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Action'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'PLAY'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(272418108760763719)
,p_plugin_attribute_id=>wwv_flow_imp.id(272417889444762663)
,p_display_sequence=>10
,p_display_value=>'Play Animation'
,p_return_value=>'PLAY'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(272418573633764342)
,p_plugin_attribute_id=>wwv_flow_imp.id(272417889444762663)
,p_display_sequence=>20
,p_display_value=>'Pause Animation'
,p_return_value=>'PAUSE'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(272418941489764978)
,p_plugin_attribute_id=>wwv_flow_imp.id(272417889444762663)
,p_display_sequence=>30
,p_display_value=>'Stop Animation'
,p_return_value=>'STOP'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '766172206E696E6A615F6B6576696E746563685F6C6F747469655F616374696F6E203D2066756E6374696F6E2829207B0D0A20206C657420646154686973203D20746869733B0D0A20206C657420656C656D656E7473203D206461546869732E61666665';
wwv_flow_imp.g_varchar2_table(2) := '63746564456C656D656E74733B0D0A20206C657420616374696F6E54797065203D206461546869732E616374696F6E2E61747472696275746530313B0D0A20206C6574206C6F7474696548656C706572203D2077696E646F772E6E696E6A615F6B657669';
wwv_flow_imp.g_varchar2_table(3) := '6E746563685F6C6F747469655F6D6F64756C65207C7C2077696E646F772E6E696E6A615F6B6576696E746563685F6C6F747469655F74656D706C6174653B0D0A0D0A2020617065782E64656275672E696E666F28604C6F7474696520416374696F6E3A20';
wwv_flow_imp.g_varchar2_table(4) := '457865637574696E6720616374696F6E207479706520247B616374696F6E547970657D60293B0D0A0D0A202069662028216C6F7474696548656C70657229207B0D0A20202020617065782E64656275672E6572726F7228274C6F7474696520416374696F';
wwv_flow_imp.g_varchar2_table(5) := '6E3A205468657265206973206E6F204C6F7474696520526567696F6E206F722054656D706C61746520636F6D706F6E656E74206C6F61646564206F6E2074686973207061676527293B0D0A2020202072657475726E3B0D0A20207D0D0A0D0A2020666F72';
wwv_flow_imp.g_varchar2_table(6) := '286C657420693D303B20693C656C656D656E74732E6C656E6774683B20692B2B29207B0D0A202020206C657420656C656D656E74203D20656C656D656E74735B695D3B0D0A202020206C657420656C656D656E744964203D20656C656D656E742E69643B';
wwv_flow_imp.g_varchar2_table(7) := '0D0A0D0A2020202073776974636828616374696F6E5479706529207B0D0A202020202020636173652027504C4159273A206C6F7474696548656C7065722E706C617928656C656D656E744964293B0D0A2020202020202020627265616B3B0D0A20202020';
wwv_flow_imp.g_varchar2_table(8) := '20206361736520275041555345273A206C6F7474696548656C7065722E706175736528656C656D656E744964293B0D0A2020202020202020627265616B3B0D0A20202020202063617365202753544F50273A206C6F7474696548656C7065722E73746F70';
wwv_flow_imp.g_varchar2_table(9) := '28656C656D656E744964293B0D0A2020202020202020627265616B3B0D0A202020207D0D0A20207D0D0A20200D0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(272414968162726636)
,p_plugin_id=>wwv_flow_imp.id(272410883923726626)
,p_file_name=>'ninja.kevintech.lottie_action.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '766172206E696E6A615F6B6576696E746563685F6C6F747469655F616374696F6E3D66756E6374696F6E28297B6C657420653D746869732E6166666563746564456C656D656E74732C743D746869732E616374696F6E2E61747472696275746530312C69';
wwv_flow_imp.g_varchar2_table(2) := '3D77696E646F772E6E696E6A615F6B6576696E746563685F6C6F747469655F6D6F64756C657C7C77696E646F772E6E696E6A615F6B6576696E746563685F6C6F747469655F74656D706C6174653B696628617065782E64656275672E696E666F28604C6F';
wwv_flow_imp.g_varchar2_table(3) := '7474696520416374696F6E3A20457865637574696E6720616374696F6E207479706520247B747D60292C6929666F72286C6574206E3D303B6E3C652E6C656E6774683B6E2B2B297B6C6574206F3D655B6E5D2E69643B7377697463682874297B63617365';
wwv_flow_imp.g_varchar2_table(4) := '22504C4159223A692E706C6179286F293B627265616B3B63617365225041555345223A692E7061757365286F293B627265616B3B636173652253544F50223A692E73746F70286F297D7D656C736520617065782E64656275672E6572726F7228224C6F74';
wwv_flow_imp.g_varchar2_table(5) := '74696520416374696F6E3A205468657265206973206E6F204C6F7474696520526567696F6E206F722054656D706C61746520636F6D706F6E656E74206C6F61646564206F6E2074686973207061676522297D3B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(272446632586141182)
,p_plugin_id=>wwv_flow_imp.id(272410883923726626)
,p_file_name=>'ninja.kevintech.lottie_action.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
