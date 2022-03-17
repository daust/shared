prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_default_workspace_id=>1236853426245258652
);
end;
/
prompt --workspace/rest-source-catalogs//yelp_catalog
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_api.id(48434986602194059557)
,p_name=>'YELP Catalog'
,p_internal_name=>'OC.APEX.REST.2'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/services//yelp_business_search
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"YELP"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"row_selector":"businesses"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(2) := ',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ADDRESS1"'||wwv_flow.LF||
',"sequence":12'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_';
wwv_flow_api.g_varchar2_table(3) := 'length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"location.addres';
wwv_flow_api.g_varchar2_table(4) := 's1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ADDRESS2"'||wwv_flow.LF||
',"sequence":13'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length';
wwv_flow_api.g_varchar2_table(5) := '":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"location.address2"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(6) := ',{'||wwv_flow.LF||
'"name":"ADDRESS3"'||wwv_flow.LF||
',"sequence":14'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000';
wwv_flow_api.g_varchar2_table(7) := ''||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"location.address3"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"na';
wwv_flow_api.g_varchar2_table(8) := 'me":"ALIAS"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_tim';
wwv_flow_api.g_varchar2_table(9) := 'e_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"alias"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CITY"'||wwv_flow.LF||
',"sequence"';
wwv_flow_api.g_varchar2_table(10) := ':9'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden';
wwv_flow_api.g_varchar2_table(11) := '":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"location.city"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"COUNTRY"'||wwv_flow.LF||
',"sequence":11'||wwv_flow.LF||
',"is_pri';
wwv_flow_api.g_varchar2_table(12) := 'mary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(13) := 'filterable":"Y"'||wwv_flow.LF||
',"selector":"location.country"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DISPLAY_PHONE"'||wwv_flow.LF||
',"sequence":21'||wwv_flow.LF||
',"is_prima';
wwv_flow_api.g_varchar2_table(14) := 'ry_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_fi';
wwv_flow_api.g_varchar2_table(15) := 'lterable":"Y"'||wwv_flow.LF||
',"selector":"display_phone"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DISTANCE"'||wwv_flow.LF||
',"sequence":8'||wwv_flow.LF||
',"is_primary_key":"N"';
wwv_flow_api.g_varchar2_table(16) := ''||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"dista';
wwv_flow_api.g_varchar2_table(17) := 'nce"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000';
wwv_flow_api.g_varchar2_table(18) := ''||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"IMAGE_URL"';
wwv_flow_api.g_varchar2_table(19) := ''||wwv_flow.LF||
',"sequence":16'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N';
wwv_flow_api.g_varchar2_table(20) := '"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"image_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"IS_CLOSED"'||wwv_flow.LF||
',"sequence":';
wwv_flow_api.g_varchar2_table(21) := '17'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden';
wwv_flow_api.g_varchar2_table(22) := '":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"is_closed"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LATITUDE"'||wwv_flow.LF||
',"sequence":18'||wwv_flow.LF||
',"is_primar';
wwv_flow_api.g_varchar2_table(23) := 'y_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"select';
wwv_flow_api.g_varchar2_table(24) := 'or":"coordinates.latitude"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LONGITUDE"'||wwv_flow.LF||
',"sequence":19'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type"';
wwv_flow_api.g_varchar2_table(25) := ':"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"coordinates.longit';
wwv_flow_api.g_varchar2_table(26) := 'ude"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NAME"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":40';
wwv_flow_api.g_varchar2_table(27) := '00'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PHONE"';
wwv_flow_api.g_varchar2_table(28) := ''||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"';
wwv_flow_api.g_varchar2_table(29) := ''||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"phone"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PRICE"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_pr';
wwv_flow_api.g_varchar2_table(30) := 'imary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(31) := '_filterable":"Y"'||wwv_flow.LF||
',"selector":"price"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RATING"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data';
wwv_flow_api.g_varchar2_table(32) := '_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"rating"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{';
wwv_flow_api.g_varchar2_table(33) := ''||wwv_flow.LF||
'"name":"REVIEW_COUNT"'||wwv_flow.LF||
',"sequence":20'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"';
wwv_flow_api.g_varchar2_table(34) := 'N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"review_count"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STATE"'||wwv_flow.LF||
',"sequence":';
wwv_flow_api.g_varchar2_table(35) := '10'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden';
wwv_flow_api.g_varchar2_table(36) := '":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"location.state"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary';
wwv_flow_api.g_varchar2_table(37) := '_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filt';
wwv_flow_api.g_varchar2_table(38) := 'erable":"Y"'||wwv_flow.LF||
',"selector":"url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ZIP_CODE"'||wwv_flow.LF||
',"sequence":15'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_typ';
wwv_flow_api.g_varchar2_table(39) := 'e":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"location.zip_cod';
wwv_flow_api.g_varchar2_table(40) := 'e"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(41) := '{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_ro';
wwv_flow_api.g_varchar2_table(42) := 'ws":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"location"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(43) := 'required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"K\u00F6ln"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_nu';
wwv_flow_api.g_varchar2_table(44) := 'll":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"term"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"d';
wwv_flow_api.g_varchar2_table(45) := 'irection":"IN"'||wwv_flow.LF||
',"value":"Pizza"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_pa';
wwv_flow_api.g_varchar2_table(46) := 'ram":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_api.id(48445499082972737648)
,p_catalog_id=>wwv_flow_api.id(48434986602194059557)
,p_name=>'YELP - business/search'
,p_base_url=>'https://api.yelp.com/v3/'
,p_service_path=>'businesses/search'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_api.g_varchar2_table
);
end;
/
prompt --workspace/rest-source-catalogs/services//yelp_businesses_id_reviews
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"YELP - \/businesses\/{id}\/reviews"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"row_selector":"rev';
wwv_flow_api.g_varchar2_table(2) := 'iews"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_typ';
wwv_flow_api.g_varchar2_table(3) := 'e":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"select';
wwv_flow_api.g_varchar2_table(4) := 'or":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID2"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length"';
wwv_flow_api.g_varchar2_table(5) := ':4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"user.id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"';
wwv_flow_api.g_varchar2_table(6) := 'IMAGE_URL"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time';
wwv_flow_api.g_varchar2_table(7) := '_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"user.image_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NAME"'||wwv_flow.LF||
',"s';
wwv_flow_api.g_varchar2_table(8) := 'equence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(9) := 's_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"user.name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PROFILE_URL"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(10) := '"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N';
wwv_flow_api.g_varchar2_table(11) := '"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"user.profile_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RATING"'||wwv_flow.LF||
',"sequence":8'||wwv_flow.LF||
',"is_primar';
wwv_flow_api.g_varchar2_table(12) := 'y_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"select';
wwv_flow_api.g_varchar2_table(13) := 'or":"rating"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TEXT"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_le';
wwv_flow_api.g_varchar2_table(14) := 'ngth":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"text"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name"';
wwv_flow_api.g_varchar2_table(15) := ':"TIME_CREATED"'||wwv_flow.LF||
',"sequence":9'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"DATE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\';
wwv_flow_api.g_varchar2_table(16) := '"-\"DD\" \"HH24\":\"MI\":\"SS"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector';
wwv_flow_api.g_varchar2_table(17) := '":"time_created"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max';
wwv_flow_api.g_varchar2_table(18) := '_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"p';
wwv_flow_api.g_varchar2_table(19) := 'lugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation';
wwv_flow_api.g_varchar2_table(20) := '":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"Y"'||wwv_flow.LF||
',"pa';
wwv_flow_api.g_varchar2_table(21) := 'rameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"id"'||wwv_flow.LF||
',"param_type":"URL_PATTERN"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":';
wwv_flow_api.g_varchar2_table(22) := '"trN4g_qaXJfoAm-j0Xc0iQ"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N';
wwv_flow_api.g_varchar2_table(23) := '"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"id"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(24) := ',"value":"trN4g_qaXJfoAm-j0Xc0iQ"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_';
wwv_flow_api.g_varchar2_table(25) := 'param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"locale"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(26) := 'value":"de_DE"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_api.id(48445499556708742053)
,p_catalog_id=>wwv_flow_api.id(48434986602194059557)
,p_name=>'YELP - businesses/{id}/reviews'
,p_base_url=>'https://api.yelp.com/v3/'
,p_service_path=>'businesses/:id/reviews'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_api.g_varchar2_table
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
