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
prompt --workspace/rest-source-catalogs//github
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_api.id(48659939576532249133)
,p_name=>'GitHub'
,p_internal_name=>'GITHUB'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/services//github_commits_by_user_and_repository
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"GitHub Commits by User and Repository"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row"';
wwv_flow_api.g_varchar2_table(2) := ':"N"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"AVATAR_URL2"'||wwv_flow.LF||
',"sequence":46'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(3) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"';
wwv_flow_api.g_varchar2_table(4) := ''||wwv_flow.LF||
',"selector":"committer.avatar_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"EVENTS_URL2"'||wwv_flow.LF||
',"sequence":47'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(5) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"';
wwv_flow_api.g_varchar2_table(6) := ''||wwv_flow.LF||
',"selector":"committer.events_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SITE_ADMIN2"'||wwv_flow.LF||
',"sequence":48'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(7) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"';
wwv_flow_api.g_varchar2_table(8) := ''||wwv_flow.LF||
',"selector":"committer.site_admin"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GRAVATAR_ID2"'||wwv_flow.LF||
',"sequence":49'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(9) := ',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y';
wwv_flow_api.g_varchar2_table(10) := '"'||wwv_flow.LF||
',"selector":"committer.gravatar_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STARRED_URL2"'||wwv_flow.LF||
',"sequence":50'||wwv_flow.LF||
',"is_primary_key":"N';
wwv_flow_api.g_varchar2_table(11) := '"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":';
wwv_flow_api.g_varchar2_table(12) := '"Y"'||wwv_flow.LF||
',"selector":"committer.starred_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FOLLOWERS_URL2"'||wwv_flow.LF||
',"sequence":51'||wwv_flow.LF||
',"is_primary_key';
wwv_flow_api.g_varchar2_table(13) := '":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterab';
wwv_flow_api.g_varchar2_table(14) := 'le":"Y"'||wwv_flow.LF||
',"selector":"committer.followers_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FOLLOWING_URL2"'||wwv_flow.LF||
',"sequence":52'||wwv_flow.LF||
',"is_prima';
wwv_flow_api.g_varchar2_table(15) := 'ry_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_fi';
wwv_flow_api.g_varchar2_table(16) := 'lterable":"Y"'||wwv_flow.LF||
',"selector":"committer.following_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ORGANIZATIONS_URL2"'||wwv_flow.LF||
',"sequence":53'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(17) := ',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"';
wwv_flow_api.g_varchar2_table(18) := 'N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"committer.organizations_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SUBSCRIPTIONS_URL2"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(19) := '"sequence":54'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(20) := ',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"committer.subscriptions_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RECEIVE';
wwv_flow_api.g_varchar2_table(21) := 'D_EVENTS_URL2"'||wwv_flow.LF||
',"sequence":55'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has';
wwv_flow_api.g_varchar2_table(22) := '_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"committer.received_events_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(23) := ',{'||wwv_flow.LF||
'"name":"COMMENTS_URL"'||wwv_flow.LF||
',"sequence":56'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":';
wwv_flow_api.g_varchar2_table(24) := '4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"comments_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"nam';
wwv_flow_api.g_varchar2_table(25) := 'e":"LOGIN"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time';
wwv_flow_api.g_varchar2_table(26) := '_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"author.login"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NODE_ID"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(27) := 'sequence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(28) := 'is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"author.node_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HTML_URL"'||wwv_flow.LF||
',"sequence":';
wwv_flow_api.g_varchar2_table(29) := '8'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden"';
wwv_flow_api.g_varchar2_table(30) := ':"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"author.html_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GISTS_URL"'||wwv_flow.LF||
',"sequence":9'||wwv_flow.LF||
',"is_p';
wwv_flow_api.g_varchar2_table(31) := 'rimary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(32) := 's_filterable":"Y"'||wwv_flow.LF||
',"selector":"author.gists_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"REPOS_URL"'||wwv_flow.LF||
',"sequence":10'||wwv_flow.LF||
',"is_primary';
wwv_flow_api.g_varchar2_table(33) := '_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filt';
wwv_flow_api.g_varchar2_table(34) := 'erable":"Y"'||wwv_flow.LF||
',"selector":"author.repos_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"AVATAR_URL"'||wwv_flow.LF||
',"sequence":11'||wwv_flow.LF||
',"is_primary_key"';
wwv_flow_api.g_varchar2_table(35) := ':"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterabl';
wwv_flow_api.g_varchar2_table(36) := 'e":"Y"'||wwv_flow.LF||
',"selector":"author.avatar_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"EVENTS_URL"'||wwv_flow.LF||
',"sequence":12'||wwv_flow.LF||
',"is_primary_key":"N"';
wwv_flow_api.g_varchar2_table(37) := ''||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"';
wwv_flow_api.g_varchar2_table(38) := 'Y"'||wwv_flow.LF||
',"selector":"author.events_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SITE_ADMIN"'||wwv_flow.LF||
',"sequence":13'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"d';
wwv_flow_api.g_varchar2_table(39) := 'ata_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(40) := '"selector":"author.site_admin"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GRAVATAR_ID"'||wwv_flow.LF||
',"sequence":14'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data';
wwv_flow_api.g_varchar2_table(41) := '_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"se';
wwv_flow_api.g_varchar2_table(42) := 'lector":"author.gravatar_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STARRED_URL"'||wwv_flow.LF||
',"sequence":15'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_t';
wwv_flow_api.g_varchar2_table(43) := 'ype":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sele';
wwv_flow_api.g_varchar2_table(44) := 'ctor":"author.starred_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FOLLOWERS_URL"'||wwv_flow.LF||
',"sequence":16'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_t';
wwv_flow_api.g_varchar2_table(45) := 'ype":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sele';
wwv_flow_api.g_varchar2_table(46) := 'ctor":"author.followers_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FOLLOWING_URL"'||wwv_flow.LF||
',"sequence":17'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data';
wwv_flow_api.g_varchar2_table(47) := '_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"se';
wwv_flow_api.g_varchar2_table(48) := 'lector":"author.following_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ORGANIZATIONS_URL"'||wwv_flow.LF||
',"sequence":18'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(49) := ',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y';
wwv_flow_api.g_varchar2_table(50) := '"'||wwv_flow.LF||
',"selector":"author.organizations_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SUBSCRIPTIONS_URL"'||wwv_flow.LF||
',"sequence":19'||wwv_flow.LF||
',"is_primary';
wwv_flow_api.g_varchar2_table(51) := '_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filt';
wwv_flow_api.g_varchar2_table(52) := 'erable":"Y"'||wwv_flow.LF||
',"selector":"author.subscriptions_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RECEIVED_EVENTS_URL"'||wwv_flow.LF||
',"sequence":20'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(53) := ',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"';
wwv_flow_api.g_varchar2_table(54) := 'N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"author.received_events_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL3"'||wwv_flow.LF||
',"sequence":21'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(55) := '"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N';
wwv_flow_api.g_varchar2_table(56) := '"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SHA2"'||wwv_flow.LF||
',"sequence":22'||wwv_flow.LF||
',"is_primary_key":';
wwv_flow_api.g_varchar2_table(57) := '"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable';
wwv_flow_api.g_varchar2_table(58) := '":"Y"'||wwv_flow.LF||
',"selector":"commit.tree.sha"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL4"'||wwv_flow.LF||
',"sequence":23'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_t';
wwv_flow_api.g_varchar2_table(59) := 'ype":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sele';
wwv_flow_api.g_varchar2_table(60) := 'ctor":"commit.tree.url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HTML_URL3"'||wwv_flow.LF||
',"sequence":43'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"V';
wwv_flow_api.g_varchar2_table(61) := 'ARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"';
wwv_flow_api.g_varchar2_table(62) := 'committer.html_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GISTS_URL2"'||wwv_flow.LF||
',"sequence":44'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARC';
wwv_flow_api.g_varchar2_table(63) := 'HAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"com';
wwv_flow_api.g_varchar2_table(64) := 'mitter.gists_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HTML_URL2"'||wwv_flow.LF||
',"sequence":37'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR';
wwv_flow_api.g_varchar2_table(65) := '2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"html_u';
wwv_flow_api.g_varchar2_table(66) := 'rl"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID2"'||wwv_flow.LF||
',"sequence":38'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N';
wwv_flow_api.g_varchar2_table(67) := '"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"committer.id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL5"'||wwv_flow.LF||
',"sequence":39';
wwv_flow_api.g_varchar2_table(68) := ''||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":';
wwv_flow_api.g_varchar2_table(69) := '"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"committer.url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TYPE2"'||wwv_flow.LF||
',"sequence":40'||wwv_flow.LF||
',"is_primary';
wwv_flow_api.g_varchar2_table(70) := '_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filt';
wwv_flow_api.g_varchar2_table(71) := 'erable":"Y"'||wwv_flow.LF||
',"selector":"committer.type"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LOGIN2"'||wwv_flow.LF||
',"sequence":41'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(72) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"';
wwv_flow_api.g_varchar2_table(73) := ''||wwv_flow.LF||
',"selector":"committer.login"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NODE_ID3"'||wwv_flow.LF||
',"sequence":42'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_ty';
wwv_flow_api.g_varchar2_table(74) := 'pe":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selec';
wwv_flow_api.g_varchar2_table(75) := 'tor":"committer.node_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"REPOS_URL2"'||wwv_flow.LF||
',"sequence":45'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":';
wwv_flow_api.g_varchar2_table(76) := '"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector"';
wwv_flow_api.g_varchar2_table(77) := ':"committer.repos_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DATE_"'||wwv_flow.LF||
',"sequence":24'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"TIMEST';
wwv_flow_api.g_varchar2_table(78) := 'AMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"-\"DD\"T\"HH24\":\"MI:SS.FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"';
wwv_flow_api.g_varchar2_table(79) := 'Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.author.date"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NAME"'||wwv_flow.LF||
',"seque';
wwv_flow_api.g_varchar2_table(80) := 'nce":25'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_h';
wwv_flow_api.g_varchar2_table(81) := 'idden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.author.name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"EMAIL"'||wwv_flow.LF||
',"sequence":26'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(82) := ',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"';
wwv_flow_api.g_varchar2_table(83) := 'N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.author.email"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MESSAGE"'||wwv_flow.LF||
',"sequence":27'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(84) := 'primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(85) := 'is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.message"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DATE_2"'||wwv_flow.LF||
',"sequence":28'||wwv_flow.LF||
',"is_primary_key';
wwv_flow_api.g_varchar2_table(86) := '":"N"'||wwv_flow.LF||
',"data_type":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"-\"DD\"T\"HH24\":\"MI:SS.';
wwv_flow_api.g_varchar2_table(87) := 'FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.committer.dat';
wwv_flow_api.g_varchar2_table(88) := 'e"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NAME2"'||wwv_flow.LF||
',"sequence":29'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":40';
wwv_flow_api.g_varchar2_table(89) := '00'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.committer.name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(90) := ',{'||wwv_flow.LF||
'"name":"EMAIL2"'||wwv_flow.LF||
',"sequence":30'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(91) := '"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.committer.email"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(92) := '"name":"REASON"'||wwv_flow.LF||
',"sequence":31'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"ha';
wwv_flow_api.g_varchar2_table(93) := 's_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.verification.reason"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{';
wwv_flow_api.g_varchar2_table(94) := ''||wwv_flow.LF||
'"name":"PAYLOAD"'||wwv_flow.LF||
',"sequence":32'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(95) := 'has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.verification.payload"'||wwv_flow.LF||
'}';
wwv_flow_api.g_varchar2_table(96) := ''||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"VERIFIED"'||wwv_flow.LF||
',"sequence":33'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":400';
wwv_flow_api.g_varchar2_table(97) := '0'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.verification.verifi';
wwv_flow_api.g_varchar2_table(98) := 'ed"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SIGNATURE"'||wwv_flow.LF||
',"sequence":34'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_lengt';
wwv_flow_api.g_varchar2_table(99) := 'h":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.verification.';
wwv_flow_api.g_varchar2_table(100) := 'signature"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"COMMENT_COUNT"'||wwv_flow.LF||
',"sequence":35'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(101) := 'has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commit.comment_count"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"na';
wwv_flow_api.g_varchar2_table(102) := 'me":"NODE_ID2"'||wwv_flow.LF||
',"sequence":36'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has';
wwv_flow_api.g_varchar2_table(103) := '_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"node_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SHA"'||wwv_flow.LF||
',"sequ';
wwv_flow_api.g_varchar2_table(104) := 'ence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_h';
wwv_flow_api.g_varchar2_table(105) := 'idden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"sha"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":';
wwv_flow_api.g_varchar2_table(106) := '"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable';
wwv_flow_api.g_varchar2_table(107) := '":"Y"'||wwv_flow.LF||
',"selector":"url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(108) := '"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"author.id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL2"';
wwv_flow_api.g_varchar2_table(109) := ''||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"';
wwv_flow_api.g_varchar2_table(110) := ''||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"author.url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TYPE"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(111) := 's_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(112) := ',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"author.type"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"1":"PAGE_NUMBER_FLEXIBL';
wwv_flow_api.g_varchar2_table(113) := 'E_SIZE"'||wwv_flow.LF||
',"2":"per_page"'||wwv_flow.LF||
',"3":"100"'||wwv_flow.LF||
',"4":"page"'||wwv_flow.LF||
',"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(114) := ',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"al';
wwv_flow_api.g_varchar2_table(115) := 'low_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"username"'||wwv_flow.LF||
',"param_type":"URL';
wwv_flow_api.g_varchar2_table(116) := '_PATTERN"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"daust"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"o';
wwv_flow_api.g_varchar2_table(117) := 'mit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"reponame"'||wwv_flow.LF||
',"param_type":"URL_PATTERN"'||wwv_flow.LF||
',"is_req';
wwv_flow_api.g_varchar2_table(118) := 'uired":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"opal-tools"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null';
wwv_flow_api.g_varchar2_table(119) := '":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_api.id(48768169661237553365)
,p_catalog_id=>wwv_flow_api.id(48659939576532249133)
,p_name=>'GitHub Commits by User and Repository'
,p_base_url=>'https://api.github.com/'
,p_service_path=>'repos/:username/:reponame/commits'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_details_json=>wwv_flow_api.g_varchar2_table
,p_version=>'20220317'
);
end;
/
prompt --workspace/rest-source-catalogs/services//github_repositories_per_user
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"GitHub Repositories per User"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"col';
wwv_flow_api.g_varchar2_table(2) := 'umns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"COLLABORATORS_URL"'||wwv_flow.LF||
',"sequence":94'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(3) := 'max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"collaborato';
wwv_flow_api.g_varchar2_table(4) := 'rs_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"COMMENTS_URL"'||wwv_flow.LF||
',"sequence":71'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"ma';
wwv_flow_api.g_varchar2_table(5) := 'x_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"comments_url"';
wwv_flow_api.g_varchar2_table(6) := ''||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"COMMITS_URL"'||wwv_flow.LF||
',"sequence":64'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length';
wwv_flow_api.g_varchar2_table(7) := '":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"commits_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"na';
wwv_flow_api.g_varchar2_table(8) := 'me":"COMPARE_URL"'||wwv_flow.LF||
',"sequence":65'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(9) := 'has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"compare_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CONT';
wwv_flow_api.g_varchar2_table(10) := 'ENTS_URL"'||wwv_flow.LF||
',"sequence":72'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time';
wwv_flow_api.g_varchar2_table(11) := '_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"contents_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CONTRIBUTOR';
wwv_flow_api.g_varchar2_table(12) := 'S_URL"'||wwv_flow.LF||
',"sequence":90'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zo';
wwv_flow_api.g_varchar2_table(13) := 'ne":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"contributors_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CREATED_AT';
wwv_flow_api.g_varchar2_table(14) := '"'||wwv_flow.LF||
',"sequence":54'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\';
wwv_flow_api.g_varchar2_table(15) := '"-\"MM\"-\"DD\"T\"HH24\":\"MI:SS.FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(16) := ',"selector":"created_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DEFAULT_BRANCH"'||wwv_flow.LF||
',"sequence":83'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_ty';
wwv_flow_api.g_varchar2_table(17) := 'pe":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selec';
wwv_flow_api.g_varchar2_table(18) := 'tor":"default_branch"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DEPLOYMENTS_URL"'||wwv_flow.LF||
',"sequence":87'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type';
wwv_flow_api.g_varchar2_table(19) := '":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selecto';
wwv_flow_api.g_varchar2_table(20) := 'r":"deployments_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DESCRIPTION"'||wwv_flow.LF||
',"sequence":66'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VA';
wwv_flow_api.g_varchar2_table(21) := 'RCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"d';
wwv_flow_api.g_varchar2_table(22) := 'escription"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DISABLED"'||wwv_flow.LF||
',"sequence":36'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"ma';
wwv_flow_api.g_varchar2_table(23) := 'x_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"disabled"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(24) := '{'||wwv_flow.LF||
'"name":"DOWNLOADS_URL"'||wwv_flow.LF||
',"sequence":80'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":';
wwv_flow_api.g_varchar2_table(25) := '4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"downloads_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"na';
wwv_flow_api.g_varchar2_table(26) := 'me":"EVENTS_URL"'||wwv_flow.LF||
',"sequence":16'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"h';
wwv_flow_api.g_varchar2_table(27) := 'as_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.events_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"';
wwv_flow_api.g_varchar2_table(28) := 'EVENTS_URL2"'||wwv_flow.LF||
',"sequence":55'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_t';
wwv_flow_api.g_varchar2_table(29) := 'ime_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"events_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FOLLOWERS_';
wwv_flow_api.g_varchar2_table(30) := 'URL"'||wwv_flow.LF||
',"sequence":20'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone';
wwv_flow_api.g_varchar2_table(31) := '":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.followers_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FOLLOWING';
wwv_flow_api.g_varchar2_table(32) := '_URL"'||wwv_flow.LF||
',"sequence":21'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zon';
wwv_flow_api.g_varchar2_table(33) := 'e":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.following_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FORK"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(34) := 'sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(35) := 'is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"fork"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FORKS"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primar';
wwv_flow_api.g_varchar2_table(36) := 'y_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"select';
wwv_flow_api.g_varchar2_table(37) := 'or":"forks"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FORKS_COUNT"'||wwv_flow.LF||
',"sequence":67'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"h';
wwv_flow_api.g_varchar2_table(38) := 'as_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"forks_count"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FORKS';
wwv_flow_api.g_varchar2_table(39) := '_URL"'||wwv_flow.LF||
',"sequence":46'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zon';
wwv_flow_api.g_varchar2_table(40) := 'e":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"forks_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FULL_NAME"'||wwv_flow.LF||
',"seque';
wwv_flow_api.g_varchar2_table(41) := 'nce":47'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_h';
wwv_flow_api.g_varchar2_table(42) := 'idden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"full_name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GISTS_URL"'||wwv_flow.LF||
',"sequence":13'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(43) := 'primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(44) := 'is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.gists_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GIT_COMMITS_URL"'||wwv_flow.LF||
',"sequence":88'||wwv_flow.LF||
',"is_p';
wwv_flow_api.g_varchar2_table(45) := 'rimary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(46) := 's_filterable":"Y"'||wwv_flow.LF||
',"selector":"git_commits_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GIT_REFS_URL"'||wwv_flow.LF||
',"sequence":73'||wwv_flow.LF||
',"is_prima';
wwv_flow_api.g_varchar2_table(47) := 'ry_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_fi';
wwv_flow_api.g_varchar2_table(48) := 'lterable":"Y"'||wwv_flow.LF||
',"selector":"git_refs_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GIT_TAGS_URL"'||wwv_flow.LF||
',"sequence":74'||wwv_flow.LF||
',"is_primary_key"';
wwv_flow_api.g_varchar2_table(49) := ':"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterabl';
wwv_flow_api.g_varchar2_table(50) := 'e":"Y"'||wwv_flow.LF||
',"selector":"git_tags_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GIT_URL"'||wwv_flow.LF||
',"sequence":25'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_';
wwv_flow_api.g_varchar2_table(51) := 'type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sel';
wwv_flow_api.g_varchar2_table(52) := 'ector":"git_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GRAVATAR_ID"'||wwv_flow.LF||
',"sequence":18'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHA';
wwv_flow_api.g_varchar2_table(53) := 'R2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner';
wwv_flow_api.g_varchar2_table(54) := '.gravatar_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HAS_DOWNLOADS"'||wwv_flow.LF||
',"sequence":81'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR';
wwv_flow_api.g_varchar2_table(55) := '2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"has_do';
wwv_flow_api.g_varchar2_table(56) := 'wnloads"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HAS_ISSUES"'||wwv_flow.LF||
',"sequence":56'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max';
wwv_flow_api.g_varchar2_table(57) := '_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"has_issues"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(58) := ',{'||wwv_flow.LF||
'"name":"HAS_PAGES"'||wwv_flow.LF||
',"sequence":48'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":400';
wwv_flow_api.g_varchar2_table(59) := '0'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"has_pages"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HA';
wwv_flow_api.g_varchar2_table(60) := 'S_PROJECTS"'||wwv_flow.LF||
',"sequence":75'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_ti';
wwv_flow_api.g_varchar2_table(61) := 'me_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"has_projects"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HAS_WIKI"';
wwv_flow_api.g_varchar2_table(62) := ''||wwv_flow.LF||
',"sequence":37'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N';
wwv_flow_api.g_varchar2_table(63) := '"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"has_wiki"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HOMEPAGE"'||wwv_flow.LF||
',"sequence":38';
wwv_flow_api.g_varchar2_table(64) := ''||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":';
wwv_flow_api.g_varchar2_table(65) := '"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"homepage"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HOOKS_URL"'||wwv_flow.LF||
',"sequence":49'||wwv_flow.LF||
',"is_primary_';
wwv_flow_api.g_varchar2_table(66) := 'key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filte';
wwv_flow_api.g_varchar2_table(67) := 'rable":"Y"'||wwv_flow.LF||
',"selector":"hooks_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HTML_URL"'||wwv_flow.LF||
',"sequence":12'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"dat';
wwv_flow_api.g_varchar2_table(68) := 'a_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"s';
wwv_flow_api.g_varchar2_table(69) := 'elector":"owner.html_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"HTML_URL2"'||wwv_flow.LF||
',"sequence":39'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":';
wwv_flow_api.g_varchar2_table(70) := '"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector"';
wwv_flow_api.g_varchar2_table(71) := ':"html_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zo';
wwv_flow_api.g_varchar2_table(72) := 'ne":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID2"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(73) := 'primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(74) := 'selector":"owner.id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ISSUES_URL"'||wwv_flow.LF||
',"sequence":57'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VAR';
wwv_flow_api.g_varchar2_table(75) := 'CHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"is';
wwv_flow_api.g_varchar2_table(76) := 'sues_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ISSUE_COMMENT_URL"'||wwv_flow.LF||
',"sequence":95'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR';
wwv_flow_api.g_varchar2_table(77) := '2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"issue_';
wwv_flow_api.g_varchar2_table(78) := 'comment_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ISSUE_EVENTS_URL"'||wwv_flow.LF||
',"sequence":91'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCH';
wwv_flow_api.g_varchar2_table(79) := 'AR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"issu';
wwv_flow_api.g_varchar2_table(80) := 'e_events_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"IS_TEMPLATE"'||wwv_flow.LF||
',"sequence":68'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"';
wwv_flow_api.g_varchar2_table(81) := ''||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"is_templ';
wwv_flow_api.g_varchar2_table(82) := 'ate"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"KEY"'||wwv_flow.LF||
',"sequence":26'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":40';
wwv_flow_api.g_varchar2_table(83) := '00'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"license.key"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":';
wwv_flow_api.g_varchar2_table(84) := '"KEYS_URL"'||wwv_flow.LF||
',"sequence":40'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_tim';
wwv_flow_api.g_varchar2_table(85) := 'e_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"keys_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LABELS_URL"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(86) := 'sequence":58'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(87) := '"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"labels_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LANGUAGE"'||wwv_flow.LF||
',"sequence":41'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(88) := ',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"';
wwv_flow_api.g_varchar2_table(89) := 'N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"language"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LANGUAGES_URL"'||wwv_flow.LF||
',"sequence":82'||wwv_flow.LF||
',"is_prima';
wwv_flow_api.g_varchar2_table(90) := 'ry_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_fi';
wwv_flow_api.g_varchar2_table(91) := 'lterable":"Y"'||wwv_flow.LF||
',"selector":"languages_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LOGIN"'||wwv_flow.LF||
',"sequence":10'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(92) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"';
wwv_flow_api.g_varchar2_table(93) := ''||wwv_flow.LF||
',"selector":"owner.login"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MERGES_URL"'||wwv_flow.LF||
',"sequence":59'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type';
wwv_flow_api.g_varchar2_table(94) := '":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selecto';
wwv_flow_api.g_varchar2_table(95) := 'r":"merges_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MILESTONES_URL"'||wwv_flow.LF||
',"sequence":84'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARC';
wwv_flow_api.g_varchar2_table(96) := 'HAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"mil';
wwv_flow_api.g_varchar2_table(97) := 'estones_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MIRROR_URL"'||wwv_flow.LF||
',"sequence":60'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(98) := '"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"mirror_url';
wwv_flow_api.g_varchar2_table(99) := '"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NAME"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(100) := ',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NAME2"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(101) := 'sequence":28'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(102) := '"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"license.name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NODE_ID"'||wwv_flow.LF||
',"sequence":11';
wwv_flow_api.g_varchar2_table(103) := ''||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":';
wwv_flow_api.g_varchar2_table(104) := '"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.node_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NODE_ID2"'||wwv_flow.LF||
',"sequence":29'||wwv_flow.LF||
',"is_prim';
wwv_flow_api.g_varchar2_table(105) := 'ary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_f';
wwv_flow_api.g_varchar2_table(106) := 'ilterable":"Y"'||wwv_flow.LF||
',"selector":"license.node_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NODE_ID3"'||wwv_flow.LF||
',"sequence":31'||wwv_flow.LF||
',"is_primary_key"';
wwv_flow_api.g_varchar2_table(107) := ':"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterabl';
wwv_flow_api.g_varchar2_table(108) := 'e":"Y"'||wwv_flow.LF||
',"selector":"node_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NOTIFICATIONS_URL"'||wwv_flow.LF||
',"sequence":96'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(109) := 'data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(110) := ',"selector":"notifications_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OPEN_ISSUES"'||wwv_flow.LF||
',"sequence":69'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"dat';
wwv_flow_api.g_varchar2_table(111) := 'a_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"open_issues';
wwv_flow_api.g_varchar2_table(112) := '"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OPEN_ISSUES_COUNT"'||wwv_flow.LF||
',"sequence":97'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_t';
wwv_flow_api.g_varchar2_table(113) := 'ime_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"open_issues_count"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ORG';
wwv_flow_api.g_varchar2_table(114) := 'ANIZATIONS_URL"'||wwv_flow.LF||
',"sequence":22'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"ha';
wwv_flow_api.g_varchar2_table(115) := 's_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.organizations_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"n';
wwv_flow_api.g_varchar2_table(116) := 'ame":"PRIVATE"'||wwv_flow.LF||
',"sequence":32'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has';
wwv_flow_api.g_varchar2_table(117) := '_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"private"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PULLS_URL"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(118) := ',"sequence":50'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"';
wwv_flow_api.g_varchar2_table(119) := ''||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"pulls_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PUSHED_AT"'||wwv_flow.LF||
',"sequence":5';
wwv_flow_api.g_varchar2_table(120) := '1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"-\"DD\"';
wwv_flow_api.g_varchar2_table(121) := 'T\"HH24\":\"MI:SS.FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"pu';
wwv_flow_api.g_varchar2_table(122) := 'shed_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RECEIVED_EVENTS_URL"'||wwv_flow.LF||
',"sequence":24'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHA';
wwv_flow_api.g_varchar2_table(123) := 'R2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner';
wwv_flow_api.g_varchar2_table(124) := '.received_events_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RELEASES_URL"'||wwv_flow.LF||
',"sequence":76'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"';
wwv_flow_api.g_varchar2_table(125) := 'VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":';
wwv_flow_api.g_varchar2_table(126) := '"releases_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"REPOS_URL"'||wwv_flow.LF||
',"sequence":14'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(127) := ',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.rep';
wwv_flow_api.g_varchar2_table(128) := 'os_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SITE_ADMIN"'||wwv_flow.LF||
',"sequence":17'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_';
wwv_flow_api.g_varchar2_table(129) := 'length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.site_admi';
wwv_flow_api.g_varchar2_table(130) := 'n"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SIZE_"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N';
wwv_flow_api.g_varchar2_table(131) := '"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"size"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SPDX_ID"'||wwv_flow.LF||
',"sequence":30'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(132) := '_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(133) := '"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"license.spdx_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SSH_URL"'||wwv_flow.LF||
',"sequence":33'||wwv_flow.LF||
',"is_primary_';
wwv_flow_api.g_varchar2_table(134) := 'key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filte';
wwv_flow_api.g_varchar2_table(135) := 'rable":"Y"'||wwv_flow.LF||
',"selector":"ssh_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STARGAZERS_COUNT"'||wwv_flow.LF||
',"sequence":92'||wwv_flow.LF||
',"is_primary_key":"N"';
wwv_flow_api.g_varchar2_table(136) := ''||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"starg';
wwv_flow_api.g_varchar2_table(137) := 'azers_count"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STARGAZERS_URL"'||wwv_flow.LF||
',"sequence":85'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR';
wwv_flow_api.g_varchar2_table(138) := '2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"starga';
wwv_flow_api.g_varchar2_table(139) := 'zers_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STARRED_URL"'||wwv_flow.LF||
',"sequence":19'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"m';
wwv_flow_api.g_varchar2_table(140) := 'ax_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.starre';
wwv_flow_api.g_varchar2_table(141) := 'd_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STATUSES_URL"'||wwv_flow.LF||
',"sequence":77'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max';
wwv_flow_api.g_varchar2_table(142) := '_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"statuses_url"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(143) := '}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SUBSCRIBERS_URL"'||wwv_flow.LF||
',"sequence":89'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_len';
wwv_flow_api.g_varchar2_table(144) := 'gth":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"subscribers_url"'||wwv_flow.LF||
'}';
wwv_flow_api.g_varchar2_table(145) := ''||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SUBSCRIPTIONS_URL"'||wwv_flow.LF||
',"sequence":23'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_le';
wwv_flow_api.g_varchar2_table(146) := 'ngth":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.subscriptio';
wwv_flow_api.g_varchar2_table(147) := 'ns_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SUBSCRIPTION_URL"'||wwv_flow.LF||
',"sequence":93'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(148) := ',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"subscript';
wwv_flow_api.g_varchar2_table(149) := 'ion_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SVN_URL"'||wwv_flow.LF||
',"sequence":34'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_le';
wwv_flow_api.g_varchar2_table(150) := 'ngth":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"svn_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"na';
wwv_flow_api.g_varchar2_table(151) := 'me":"TAGS_URL"'||wwv_flow.LF||
',"sequence":42'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has';
wwv_flow_api.g_varchar2_table(152) := '_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"tags_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TEAMS_URL"';
wwv_flow_api.g_varchar2_table(153) := ''||wwv_flow.LF||
',"sequence":52'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N';
wwv_flow_api.g_varchar2_table(154) := '"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"teams_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TREES_URL"'||wwv_flow.LF||
',"sequence":';
wwv_flow_api.g_varchar2_table(155) := '53'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden';
wwv_flow_api.g_varchar2_table(156) := '":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"trees_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TYPE"'||wwv_flow.LF||
',"sequence":9'||wwv_flow.LF||
',"is_primary_key';
wwv_flow_api.g_varchar2_table(157) := '":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterab';
wwv_flow_api.g_varchar2_table(158) := 'le":"Y"'||wwv_flow.LF||
',"selector":"owner.type"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"UPDATED_AT"'||wwv_flow.LF||
',"sequence":61'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"dat';
wwv_flow_api.g_varchar2_table(159) := 'a_type":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"-\"DD\"T\"HH24\":\"MI:SS.FF9TZR"'||wwv_flow.LF||
',"h';
wwv_flow_api.g_varchar2_table(160) := 'as_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"updated_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(161) := '"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(162) := '"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL2"'||wwv_flow.LF||
',"sequence":8'||wwv_flow.LF||
',"is_primary';
wwv_flow_api.g_varchar2_table(163) := '_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filt';
wwv_flow_api.g_varchar2_table(164) := 'erable":"Y"'||wwv_flow.LF||
',"selector":"owner.url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URL3"'||wwv_flow.LF||
',"sequence":27'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_t';
wwv_flow_api.g_varchar2_table(165) := 'ype":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sele';
wwv_flow_api.g_varchar2_table(166) := 'ctor":"license.url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"VISIBILITY"'||wwv_flow.LF||
',"sequence":62'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARC';
wwv_flow_api.g_varchar2_table(167) := 'HAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"vis';
wwv_flow_api.g_varchar2_table(168) := 'ibility"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"WATCHERS"'||wwv_flow.LF||
',"sequence":43'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_tim';
wwv_flow_api.g_varchar2_table(169) := 'e_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"watchers"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"WATCHERS_COUNT';
wwv_flow_api.g_varchar2_table(170) := '"'||wwv_flow.LF||
',"sequence":86'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(171) := '"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"watchers_count"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ALLOW_FORKING"'||wwv_flow.LF||
',"sequence":78'||wwv_flow.LF||
',"is_pri';
wwv_flow_api.g_varchar2_table(172) := 'mary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(173) := 'filterable":"Y"'||wwv_flow.LF||
',"selector":"allow_forking"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ARCHIVED"'||wwv_flow.LF||
',"sequence":35'||wwv_flow.LF||
',"is_primary_key":';
wwv_flow_api.g_varchar2_table(174) := '"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable';
wwv_flow_api.g_varchar2_table(175) := '":"Y"'||wwv_flow.LF||
',"selector":"archived"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ARCHIVE_URL"'||wwv_flow.LF||
',"sequence":63'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_t';
wwv_flow_api.g_varchar2_table(176) := 'ype":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sele';
wwv_flow_api.g_varchar2_table(177) := 'ctor":"archive_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ASSIGNEES_URL"'||wwv_flow.LF||
',"sequence":79'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"V';
wwv_flow_api.g_varchar2_table(178) := 'ARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"';
wwv_flow_api.g_varchar2_table(179) := 'assignees_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"AVATAR_URL"'||wwv_flow.LF||
',"sequence":15'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"';
wwv_flow_api.g_varchar2_table(180) := ''||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"owner.av';
wwv_flow_api.g_varchar2_table(181) := 'atar_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"BLOBS_URL"'||wwv_flow.LF||
',"sequence":44'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max';
wwv_flow_api.g_varchar2_table(182) := '_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"blobs_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(183) := '{'||wwv_flow.LF||
'"name":"BRANCHES_URL"'||wwv_flow.LF||
',"sequence":70'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4';
wwv_flow_api.g_varchar2_table(184) := '000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"branches_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name';
wwv_flow_api.g_varchar2_table(185) := '":"CLONE_URL"'||wwv_flow.LF||
',"sequence":45'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_';
wwv_flow_api.g_varchar2_table(186) := 'time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"clone_url"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attribut';
wwv_flow_api.g_varchar2_table(187) := 'es":{'||wwv_flow.LF||
'"1":"PAGE_NUMBER_FLEXIBLE_SIZE"'||wwv_flow.LF||
',"2":"per_page"'||wwv_flow.LF||
',"3":"100"'||wwv_flow.LF||
',"4":"page"'||wwv_flow.LF||
',"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(188) := ',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLE';
wwv_flow_api.g_varchar2_table(189) := 'CTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
null;
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_api.id(48659939909342249136)
,p_catalog_id=>wwv_flow_api.id(48659939576532249133)
,p_name=>'GitHub Repositories per User'
,p_base_url=>'https://api.github.com/'
,p_service_path=>'users/daust/repos'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_details_json=>wwv_flow_api.g_varchar2_table
,p_version=>'20220317'
);
null;
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
