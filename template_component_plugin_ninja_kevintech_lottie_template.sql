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
--   Date and Time:   23:15 Thursday August 8, 2024
--   Exported By:     KEVINTECH
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 256956490667766997
--   Manifest End
--   Version:         23.1.0
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/ninja_kevintech_lottie_template
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(256956490667766997)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'NINJA.KEVINTECH.LOTTIE_TEMPLATE'
,p_display_name=>'Lottie Animation Template'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'{else/}',
'  <canvas id="#ELEMENT_ID#" style="width: #WIDTH##SIZE_UNIT#; height:#HEIGHT#;#SIZE_UNIT#"></canvas>',
'{endif/}',
'',
'<!-- Lottie does not support UMD and APEX does not support module imports -->',
'<script type="module">',
'  import { DotLottie } from "https://cdn.jsdelivr.net/npm/@lottiefiles/dotlottie-web/+esm";',
'',
'  new DotLottie({',
'    autoplay: {if AUTOPLAY/}true{else/}false{endif/},',
'    loop: {if LOOP_ANIMATION/}true{else/}false{endif/},',
'    canvas: document.getElementById("#ELEMENT_ID#"),',
'    src: "#URL#",',
'    {if SPEED/}speed: #SPEED#,{endif/}',
'    {if DURATION/}duration: #DURATION#,{endif/}',
'  });',
'</script>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Lottie Animation Plugin for Oracle APEX (Template Component)</b>',
'',
'Easily add Lottie animations to your APEX pages. Enhance your app with smooth, lightweight animations that look great on any device.'))
,p_version_identifier=>'1.0'
,p_about_url=>'https://kevintech.ninja/'
,p_files_version=>16
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(256978359775069826)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'ELEMENT_ID'
,p_prompt=>'Element Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(256975992831028910)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'URL'
,p_prompt=>'Lottie File URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_help_text=>'Enter the URL of the Lottie .JSON or .lottie file. This file contains the animation data that will be displayed on the page.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(257997944311966271)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'SIZE_UNIT'
,p_prompt=>'Size Unit'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'px'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose the unit of measurement for the animation''s dimensions. Options are pixels (px) for fixed sizes or percentage (%) for responsive sizing.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(257998224558967004)
,p_plugin_attribute_id=>wwv_flow_imp.id(257997944311966271)
,p_display_sequence=>10
,p_display_value=>'px'
,p_return_value=>'px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(257998636013969637)
,p_plugin_attribute_id=>wwv_flow_imp.id(257997944311966271)
,p_display_sequence=>20
,p_display_value=>'%'
,p_return_value=>'%'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(256956754256767012)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'HEIGHT'
,p_prompt=>'Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'100'
,p_escape_mode=>'HTML'
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Specify the height of the animation. Enter a numeric value that corresponds to the chosen size unit.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(256957130889767012)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'WIDTH'
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'100'
,p_escape_mode=>'HTML'
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Specify the width of the animation. Enter a numeric value that corresponds to the chosen size unit.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(258000624674983176)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'LOOP_ANIMATION'
,p_prompt=>'Loop'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Determine whether the animation should loop continuously. Set to ''y'' to loop the animation, ''n'' to play it just once.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(262169971232005315)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AUTOPLAY'
,p_prompt=>'Auto-play'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(262170286642010927)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'SPEED'
,p_prompt=>'Speed'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_unit=>'X'
,p_is_translatable=>false
,p_help_text=>'Control the playback speed of the animation. Specify a multiplier (e.g., 1x for normal speed, 2x for double speed) to adjust how fast or slow the animation plays.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(262170915307020202)
,p_plugin_id=>wwv_flow_imp.id(256956490667766997)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'DURATION'
,p_prompt=>'Duration'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_unit=>'milliseconds'
,p_is_translatable=>false
,p_help_text=>'Set the total duration for the animation in milliseconds. This overrides the original duration of the Lottie file, allowing you to speed up or slow down the playback.'
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
