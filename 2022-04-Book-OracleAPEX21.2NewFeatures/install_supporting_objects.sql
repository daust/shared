/*
  This script will install the required objects and seed data for the Book: 
  
    Oracle Application Express 21.2 New Features by Dietmar Aust. 

  First, you need to install the Sample Data Set "HR Data". These are the well-known OEHR_* tables. 
    - Navigate to SQL Workshop > Utilities > Sample Data Sets
    - Click on "Install" for Data Set: "HR Data"	(The generic HR tables commonly used by Oracle Education)

  Next, run this script to add additional columns and views to the original data model. 
*/

Rem
Rem  add-geometry-column-to-oehr_customers.sql
Rem
/*
select 'update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE('
          ||to_char(cust.geometry.sdo_point.x,'FM9999999999999D9999999999999', 'NLS_NUMERIC_CHARACTERS = ''.,''')||','
          ||to_char(cust.geometry.sdo_point.y,'FM9999999999999D9999999999999', 'NLS_NUMERIC_CHARACTERS = ''.,''')||', NULL), NULL, NULL) where customer_id='|| 
       cust.customer_id || ';' 
  from opal_oehr_customers_bak cust
 where geometry is not null
 order by customer_id;
*/
alter table oehr_customers add (geometry sdo_geometry);
update oehr_customers set geometry=null;

update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.13638,40.48548, NULL), NULL, NULL) where customer_id=101;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.1201709090724,39.7960794405552, NULL), NULL, NULL) where customer_id=102;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-88.97547,40.47953, NULL), NULL, NULL) where customer_id=103;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.2742,39.84962, NULL), NULL, NULL) where customer_id=104;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.5831693333333,39.1646506666667, NULL), NULL, NULL) where customer_id=105;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.27045,41.69626, NULL), NULL, NULL) where customer_id=106;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-85.92577,41.63976, NULL), NULL, NULL) where customer_id=107;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.15518,39.76844, NULL), NULL, NULL) where customer_id=108;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.2767,41.70259, NULL), NULL, NULL) where customer_id=109;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.21977,39.76271, NULL), NULL, NULL) where customer_id=110;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.51733,39.16016, NULL), NULL, NULL) where customer_id=111;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.5293584615385,37.97926, NULL), NULL, NULL) where customer_id=112;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.63416,37.95398, NULL), NULL, NULL) where customer_id=113;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.52117,39.1309, NULL), NULL, NULL) where customer_id=114;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.0240122222222,42.4278388888889, NULL), NULL, NULL) where customer_id=115;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.33251,42.23588, NULL), NULL, NULL) where customer_id=116;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-85.67042,42.99581, NULL), NULL, NULL) where customer_id=117;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-85.5447,42.87267, NULL), NULL, NULL) where customer_id=118;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.88999,43.3671, NULL), NULL, NULL) where customer_id=119;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-84.55225,42.73412, NULL), NULL, NULL) where customer_id=120;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-84.53812,42.70577, NULL), NULL, NULL) where customer_id=121;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-84.54804,42.69888, NULL), NULL, NULL) where customer_id=122;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.88932,42.29336, NULL), NULL, NULL) where customer_id=123;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.0080209090909,42.34871, NULL), NULL, NULL) where customer_id=124;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.99585,43.41239, NULL), NULL, NULL) where customer_id=125;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.137595,42.354691, NULL), NULL, NULL) where customer_id=126;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-84.34662,42.23915, NULL), NULL, NULL) where customer_id=127;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.71654,42.24416, NULL), NULL, NULL) where customer_id=128;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-85.56776,42.26231, NULL), NULL, NULL) where customer_id=129;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.046324,42.328116, NULL), NULL, NULL) where customer_id=130;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-85.66979,42.96639, NULL), NULL, NULL) where customer_id=131;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.73407,42.283195, NULL), NULL, NULL) where customer_id=132;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.93737,43.43296, NULL), NULL, NULL) where customer_id=133;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.1211115151515,42.375306969697, NULL), NULL, NULL) where customer_id=134;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.7273014285714,42.27509, NULL), NULL, NULL) where customer_id=135;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-84.54273,42.76927, NULL), NULL, NULL) where customer_id=136;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-90.7195934813988,42.4955908229993, NULL), NULL, NULL) where customer_id=137;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.70834,41.61488, NULL), NULL, NULL) where customer_id=138;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-91.6708,42.03298, NULL), NULL, NULL) where customer_id=139;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-95.8118,41.27836, NULL), NULL, NULL) where customer_id=140;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-90.54756,41.55697, NULL), NULL, NULL) where customer_id=141;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-90.69684,42.50069, NULL), NULL, NULL) where customer_id=142;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.62574,41.53673, NULL), NULL, NULL) where customer_id=143;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-91.666657755102,41.9771206122449, NULL), NULL, NULL) where customer_id=144;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-91.51561,44.79573, NULL), NULL, NULL) where customer_id=145;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.91347,43.1799, NULL), NULL, NULL) where customer_id=146;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.9923829936306,43.1485051592357, NULL), NULL, NULL) where customer_id=147;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-89.32208,43.11402, NULL), NULL, NULL) where customer_id=148;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-89.26668,43.1059, NULL), NULL, NULL) where customer_id=149;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.99088,43.12988, NULL), NULL, NULL) where customer_id=150;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-88.04989,43.00269, NULL), NULL, NULL) where customer_id=151;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-88.02015,43.00883, NULL), NULL, NULL) where customer_id=152;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-89.36388,43.10773, NULL), NULL, NULL) where customer_id=153;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-89.03297,42.49961, NULL), NULL, NULL) where customer_id=154;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-90.67618,44.02186, NULL), NULL, NULL) where customer_id=155;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.9182643821296,43.1122954966743, NULL), NULL, NULL) where customer_id=156;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.90676,43.0375, NULL), NULL, NULL) where customer_id=157;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-91.51094,44.81371, NULL), NULL, NULL) where customer_id=158;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.90618,43.03876, NULL), NULL, NULL) where customer_id=159;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-89.62749,44.96342, NULL), NULL, NULL) where customer_id=160;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-88.01698,44.51013, NULL), NULL, NULL) where customer_id=161;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-89.38435,43.07749, NULL), NULL, NULL) where customer_id=162;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.98601,43.02522, NULL), NULL, NULL) where customer_id=163;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-91.22438,43.81574, NULL), NULL, NULL) where customer_id=164;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.88777,43.07822, NULL), NULL, NULL) where customer_id=165;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.2547766666667,45.0099933333333, NULL), NULL, NULL) where customer_id=166;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.29813,45.01318, NULL), NULL, NULL) where customer_id=167;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.26842,44.98496, NULL), NULL, NULL) where customer_id=168;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.35305,44.92404, NULL), NULL, NULL) where customer_id=169;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.26264,44.95195, NULL), NULL, NULL) where customer_id=170;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-92.46734,44.02252, NULL), NULL, NULL) where customer_id=171;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-92.10243,46.78366, NULL), NULL, NULL) where customer_id=172;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.28186,44.9686973684211, NULL), NULL, NULL) where customer_id=173;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.14573,43.10478, NULL), NULL, NULL) where customer_id=174;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.1975349467557,43.047910780181, NULL), NULL, NULL) where customer_id=175;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-79.0524,43.10333, NULL), NULL, NULL) where customer_id=176;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.79219,42.66848, NULL), NULL, NULL) where customer_id=177;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.78363,42.24617, NULL), NULL, NULL) where customer_id=178;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.7615,42.65845, NULL), NULL, NULL) where customer_id=179;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.92852,41.72351, NULL), NULL, NULL) where customer_id=180;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.93298,42.82225, NULL), NULL, NULL) where customer_id=181;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.86652,42.90033, NULL), NULL, NULL) where customer_id=182;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.89775,40.93377, NULL), NULL, NULL) where customer_id=183;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.15208,43.04399, NULL), NULL, NULL) where customer_id=184;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.69224,43.16946, NULL), NULL, NULL) where customer_id=185;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.82594,42.88487, NULL), NULL, NULL) where customer_id=186;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.93788,42.76813, NULL), NULL, NULL) where customer_id=187;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.90528,42.81513, NULL), NULL, NULL) where customer_id=188;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.73651,40.99895, NULL), NULL, NULL) where customer_id=189;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.92789,42.86834, NULL), NULL, NULL) where customer_id=190;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.09459,40.05065, NULL), NULL, NULL) where customer_id=191;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.91831,40.3292, NULL), NULL, NULL) where customer_id=192;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.04564,40.40802, NULL), NULL, NULL) where customer_id=193;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.4442944668728,40.4876542844341, NULL), NULL, NULL) where customer_id=194;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.93645,40.34236, NULL), NULL, NULL) where customer_id=195;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.4337624971968,40.1263091693453, NULL), NULL, NULL) where customer_id=196;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.84941,40.3732, NULL), NULL, NULL) where customer_id=197;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.30885,40.0438, NULL), NULL, NULL) where customer_id=198;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.14351,39.9483, NULL), NULL, NULL) where customer_id=199;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.10253,40.50433, NULL), NULL, NULL) where customer_id=200;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-79.16285,40.62558, NULL), NULL, NULL) where customer_id=201;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.02475,40.41039, NULL), NULL, NULL) where customer_id=202;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-79.94878,40.4615, NULL), NULL, NULL) where customer_id=203;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.80302,40.31444, NULL), NULL, NULL) where customer_id=204;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.16921,42.09726, NULL), NULL, NULL) where customer_id=205;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.39954,40.50578, NULL), NULL, NULL) where customer_id=206;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.00603,40.43432, NULL), NULL, NULL) where customer_id=207;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.11036,42.08359, NULL), NULL, NULL) where customer_id=208;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.22714,39.962, NULL), NULL, NULL) where customer_id=209;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.00392,40.3229, NULL), NULL, NULL) where customer_id=210;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-79.93361,40.45866, NULL), NULL, NULL) where customer_id=211;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.1303,40.03742, NULL), NULL, NULL) where customer_id=212;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.72416,41.864, NULL), NULL, NULL) where customer_id=213;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-79.89758,40.48787, NULL), NULL, NULL) where customer_id=214;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.6618753534569,41.40955534518, NULL), NULL, NULL) where customer_id=215;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.1528644444445,39.9550322222222, NULL), NULL, NULL) where customer_id=216;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.80607,40.29319, NULL), NULL, NULL) where customer_id=217;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.0135910493637,40.4814588176156, NULL), NULL, NULL) where customer_id=218;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.66561,41.41017, NULL), NULL, NULL) where customer_id=219;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.17061,39.95039, NULL), NULL, NULL) where customer_id=220;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.34319,40.11679, NULL), NULL, NULL) where customer_id=221;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.2737666666667,39.9781733333333, NULL), NULL, NULL) where customer_id=222;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.3083,40.07309, NULL), NULL, NULL) where customer_id=223;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.12144,40.03528, NULL), NULL, NULL) where customer_id=224;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.6556,41.41146, NULL), NULL, NULL) where customer_id=225;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.00237,40.43977, NULL), NULL, NULL) where customer_id=226;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.07094,42.10526, NULL), NULL, NULL) where customer_id=227;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-79.9590375,40.5168491666667, NULL), NULL, NULL) where customer_id=228;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.15037,39.95074, NULL), NULL, NULL) where customer_id=229;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.17048,40.03802, NULL), NULL, NULL) where customer_id=230;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-77.1159,39.06276, NULL), NULL, NULL) where customer_id=231;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.5459394314187,39.3223665829797, NULL), NULL, NULL) where customer_id=232;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.3567873333333,39.5239326666667, NULL), NULL, NULL) where customer_id=233;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.56131,39.30178, NULL), NULL, NULL) where customer_id=234;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.49879,39.25554, NULL), NULL, NULL) where customer_id=235;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-77.21198,39.09788, NULL), NULL, NULL) where customer_id=236;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.60941,39.32495, NULL), NULL, NULL) where customer_id=237;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.60992,39.27279, NULL), NULL, NULL) where customer_id=238;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.83498,39.63151, NULL), NULL, NULL) where customer_id=239;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.56939,39.28653, NULL), NULL, NULL) where customer_id=240;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.0546720950914,38.4335574294517, NULL), NULL, NULL) where customer_id=241;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.9,39.14694, NULL), NULL, NULL) where customer_id=242;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.82403,39.12466, NULL), NULL, NULL) where customer_id=243;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.59622,39.31591, NULL), NULL, NULL) where customer_id=244;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.0845,38.33331, NULL), NULL, NULL) where customer_id=245;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.9990732075472,42.98828, NULL), NULL, NULL) where customer_id=246;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-92.46311,44.02042, NULL), NULL, NULL) where customer_id=247;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.28524,44.97913, NULL), NULL, NULL) where customer_id=248;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.44219,41.58704, NULL), NULL, NULL) where customer_id=249;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-85.61404,42.97509, NULL), NULL, NULL) where customer_id=250;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.04475,42.33171, NULL), NULL, NULL) where customer_id=251;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-85.49811,42.90184, NULL), NULL, NULL) where customer_id=252;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-91.6658957142857,41.9762414285714, NULL), NULL, NULL) where customer_id=253;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-95.82521,41.24574, NULL), NULL, NULL) where customer_id=254;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-95.85662,41.26058, NULL), NULL, NULL) where customer_id=255;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.91691,42.98767, NULL), NULL, NULL) where customer_id=256;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-88.00846,42.95748, NULL), NULL, NULL) where customer_id=257;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-95.37757,45.88904, NULL), NULL, NULL) where customer_id=258;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-93.248992,44.94837, NULL), NULL, NULL) where customer_id=259;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.87631,42.94197, NULL), NULL, NULL) where customer_id=260;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.75598,43.1341, NULL), NULL, NULL) where customer_id=262;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-79.9732,40.48824, NULL), NULL, NULL) where customer_id=263;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.1586637026587,39.9538737708775, NULL), NULL, NULL) where customer_id=264;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.74072,39.67625, NULL), NULL, NULL) where customer_id=267;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.11467,42.37995, NULL), NULL, NULL) where customer_id=268;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-86.2939,41.71309, NULL), NULL, NULL) where customer_id=269;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-85.23804,42.4193999579739, NULL), NULL, NULL) where customer_id=270;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.32012,42.63563, NULL), NULL, NULL) where customer_id=271;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-83.04617,42.331, NULL), NULL, NULL) where customer_id=272;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-87.80023,42.73765, NULL), NULL, NULL) where customer_id=273;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-78.85154,42.87632, NULL), NULL, NULL) where customer_id=274;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.80691,42.72017, NULL), NULL, NULL) where customer_id=275;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-73.91587,42.80738, NULL), NULL, NULL) where customer_id=276;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.14245,43.01955, NULL), NULL, NULL) where customer_id=277;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-80.0162,40.38476, NULL), NULL, NULL) where customer_id=278;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.31948,40.02913, NULL), NULL, NULL) where customer_id=279;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.22746,39.96604, NULL), NULL, NULL) where customer_id=280;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-75.03951,40.02495, NULL), NULL, NULL) where customer_id=281;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.59913,39.28463, NULL), NULL, NULL) where customer_id=282;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-76.59548,39.4017, NULL), NULL, NULL) where customer_id=283;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(72.83483,18.94017, NULL), NULL, NULL) where customer_id=323;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.62015,48.14072, NULL), NULL, NULL) where customer_id=326;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.57256,48.13621, NULL), NULL, NULL) where customer_id=327;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.57773,48.14732, NULL), NULL, NULL) where customer_id=328;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.49554,41.90013, NULL), NULL, NULL) where customer_id=333;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-79.57991,43.69791, NULL), NULL, NULL) where customer_id=334;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.42121,43.71908, NULL), NULL, NULL) where customer_id=335;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.29101,43.84647, NULL), NULL, NULL) where customer_id=337;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.29101,43.84647, NULL), NULL, NULL) where customer_id=339;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.92749,44.06225, NULL), NULL, NULL) where customer_id=341;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.29101,43.84647, NULL), NULL, NULL) where customer_id=342;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.92749,44.06225, NULL), NULL, NULL) where customer_id=343;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.92749,44.06225, NULL), NULL, NULL) where customer_id=345;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.28953,43.84303, NULL), NULL, NULL) where customer_id=346;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.92749,44.06225, NULL), NULL, NULL) where customer_id=347;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.03015,43.53003, NULL), NULL, NULL) where customer_id=348;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.12353,43.4224, NULL), NULL, NULL) where customer_id=349;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.78189,43.09206, NULL), NULL, NULL) where customer_id=350;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.89777,44.0856, NULL), NULL, NULL) where customer_id=351;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(7.71811,43.80252, NULL), NULL, NULL) where customer_id=352;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.28953,43.84303, NULL), NULL, NULL) where customer_id=361;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.92749,44.06225, NULL), NULL, NULL) where customer_id=363;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.2773,45.53354, NULL), NULL, NULL) where customer_id=447;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.15564,45.36351, NULL), NULL, NULL) where customer_id=448;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.15564,45.36351, NULL), NULL, NULL) where customer_id=449;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(10.34554,44.70356, NULL), NULL, NULL) where customer_id=450;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.78555,43.10766, NULL), NULL, NULL) where customer_id=451;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.30858,43.31514, NULL), NULL, NULL) where customer_id=452;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(77.57156,13.01686, NULL), NULL, NULL) where customer_id=453;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(76.65303,12.30906, NULL), NULL, NULL) where customer_id=458;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(85.27468,25.27833, NULL), NULL, NULL) where customer_id=466;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(77.0301,28.64011, NULL), NULL, NULL) where customer_id=467;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(77.0301,28.64011, NULL), NULL, NULL) where customer_id=468;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(76.82667,30.73497, NULL), NULL, NULL) where customer_id=492;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.48555,42.006165, NULL), NULL, NULL) where customer_id=712;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.64728,41.46964, NULL), NULL, NULL) where customer_id=713;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.47153,41.9308, NULL), NULL, NULL) where customer_id=715;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.49565,41.90322, NULL), NULL, NULL) where customer_id=717;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.64231,41.47368, NULL), NULL, NULL) where customer_id=719;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.19088,42.08544, NULL), NULL, NULL) where customer_id=721;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.88081,41.83698, NULL), NULL, NULL) where customer_id=727;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.89622,42.01706, NULL), NULL, NULL) where customer_id=729;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.53207,41.97369, NULL), NULL, NULL) where customer_id=731;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(7.71811,43.80252, NULL), NULL, NULL) where customer_id=754;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(7.71811,43.80252, NULL), NULL, NULL) where customer_id=755;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.29501,41.72377, NULL), NULL, NULL) where customer_id=756;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(12.06241,41.96807, NULL), NULL, NULL) where customer_id=757;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.02971,43.54046, NULL), NULL, NULL) where customer_id=766;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.77946,43.17032, NULL), NULL, NULL) where customer_id=767;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.92749,44.06225, NULL), NULL, NULL) where customer_id=768;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(11.3659381881358,43.4846263762716, NULL), NULL, NULL) where customer_id=769;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(10.42669,44.73084, NULL), NULL, NULL) where customer_id=770;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(10.34554,44.70356, NULL), NULL, NULL) where customer_id=771;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.92749,44.06225, NULL), NULL, NULL) where customer_id=772;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.31687,47.48304, NULL), NULL, NULL) where customer_id=825;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.2847978027538,47.4367748440614, NULL), NULL, NULL) where customer_id=826;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30642,47.47498, NULL), NULL, NULL) where customer_id=827;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30642,47.47498, NULL), NULL, NULL) where customer_id=828;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30228,47.48576, NULL), NULL, NULL) where customer_id=829;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30336,47.47886, NULL), NULL, NULL) where customer_id=830;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.29325,47.48542, NULL), NULL, NULL) where customer_id=831;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30642,47.47498, NULL), NULL, NULL) where customer_id=832;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30173,47.48746, NULL), NULL, NULL) where customer_id=833;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30642,47.47498, NULL), NULL, NULL) where customer_id=834;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30642,47.47498, NULL), NULL, NULL) where customer_id=835;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.31613,47.41647, NULL), NULL, NULL) where customer_id=836;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.53863,47.36948, NULL), NULL, NULL) where customer_id=837;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.50483,47.38077, NULL), NULL, NULL) where customer_id=838;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.52698,46.84761, NULL), NULL, NULL) where customer_id=839;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.60498,46.81361, NULL), NULL, NULL) where customer_id=840;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.46458,47.40795, NULL), NULL, NULL) where customer_id=841;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(9.37693,47.42488, NULL), NULL, NULL) where customer_id=842;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.5247,47.37501, NULL), NULL, NULL) where customer_id=843;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.48921,47.36896, NULL), NULL, NULL) where customer_id=844;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.53956,47.37707, NULL), NULL, NULL) where customer_id=845;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(7.50061,46.97663, NULL), NULL, NULL) where customer_id=846;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.30642,47.47498, NULL), NULL, NULL) where customer_id=847;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.54278,47.37279, NULL), NULL, NULL) where customer_id=848;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.53843,47.36762, NULL), NULL, NULL) where customer_id=849;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.65245,47.23297, NULL), NULL, NULL) where customer_id=850;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(8.55329,47.36524, NULL), NULL, NULL) where customer_id=851;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(7.6784,47.07345, NULL), NULL, NULL) where customer_id=852;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(7.6784,47.07345, NULL), NULL, NULL) where customer_id=853;
update oehr_customers set geometry=MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(77.61758,13.00535, NULL), NULL, NULL) where customer_id=930;

commit;

Rem
Rem  add-tags-column-to-oehr_customers.sql
Rem
alter table oehr_customers add (tags varchar2(4000));

update oehr_customers set tags = 'VIP' where country_id IN ('IN', 'CN');
commit;

update oehr_customers set tags = 'VIP,TOP10' where country_id IN ('IT');
commit;

update oehr_customers set tags = 'VIP,One-Day-Shipping' where country_id IN ('DE');
commit;

update oehr_customers set tags = 'TOP10,One-Day-Shipping' where country_id IN ('JP', 'IN');
commit;


Rem
Rem  oehr_customers_rl_v.sql
Rem
create or replace view oehr_customers_rl_v
as
  select 
  c.customer_id,
  c.cust_first_name,
  c.cust_last_name,
  c.street_address,
  c.postal_code,
  c.city,
  c.state_province,
  co.country_id,
  co.country_name,
  co.region_id,
  c.nls_language,
  c.nls_territory,
  c.credit_limit,
  c.cust_email,
  c.phone_number,
  c.account_mgr_id, 
  c.geometry,
  c.tags
from 
  oehr_customers c left outer join oehr_countries co on (co.country_id=c.country_id)
/



