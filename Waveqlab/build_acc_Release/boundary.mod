V34 :0x34 boundary
12 boundary.f90 S624 0
07/15/2023  10:30:38
use mpi3d_interface private
use mpi3dcomm private
use datatypes private
use common private
enduse
D 58 26 654 176 653 3
D 159 26 988 68 987 3
D 339 26 1159 1616 1158 7
D 375 22 7
D 377 22 7
D 379 22 7
D 381 22 7
D 383 22 7
D 388 26 1217 288 1212 7
D 400 22 7
D 405 26 1225 312 1224 7
D 420 22 7
D 425 26 1242 576 1237 7
D 443 22 7
D 445 22 7
D 450 26 1262 2640 1258 7
D 522 22 7
D 524 22 7
D 526 22 7
D 528 22 7
D 530 22 7
D 532 22 7
D 534 22 7
D 536 22 7
D 538 22 7
D 540 22 7
D 542 22 7
D 556 26 1359 3048 1358 7
D 684 22 7
D 686 22 7
D 688 22 7
D 690 22 7
D 692 22 7
D 694 22 7
D 696 22 7
D 698 22 7
D 700 22 7
D 702 22 7
D 704 22 7
D 706 22 7
D 708 22 7
D 710 22 7
D 712 22 7
D 714 22 7
D 716 22 7
D 718 22 7
D 720 22 7
D 722 22 7
D 727 26 1489 760 1488 7
D 745 22 7
D 747 22 7
D 752 26 1513 392 1512 7
D 770 22 7
D 772 22 7
D 777 26 1531 26888 1530 7
D 795 26 1552 2248 1551 7
D 855 22 7
D 857 22 7
D 859 22 7
D 861 22 7
D 863 22 7
D 865 22 7
D 867 22 7
D 869 22 7
D 871 22 7
D 876 26 1632 4104 1631 7
D 933 22 7
D 935 22 7
D 937 22 7
D 939 22 7
D 941 22 7
D 943 22 7
D 945 22 7
D 947 22 7
D 961 26 1708 1112 1707 7
D 1015 22 7
D 1017 22 7
D 1019 22 7
D 1021 22 7
D 1023 22 7
D 1025 22 7
D 1027 22 7
D 1041 26 1771 6576 1770 7
D 1112 23 450 1 11 976 0 0 0 0 0
 0 976 11 11 976 976
S 624 24 0 0 0 10 1 0 5013 10005 0 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 boundary
S 626 23 0 0 0 10 632 624 5029 4 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wp
S 628 23 0 0 0 10 1258 624 5042 4 0 A 0 0 0 0 B 400000 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 block_boundary
R 632 16 3 common wp
S 635 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 644 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 648 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 653 25 2 mpi3dcomm cartesian3d_t
R 654 5 3 mpi3dcomm nb cartesian3d_t
R 655 5 4 mpi3dcomm nq cartesian3d_t
R 656 5 5 mpi3dcomm mq cartesian3d_t
R 657 5 6 mpi3dcomm pq cartesian3d_t
R 658 5 7 mpi3dcomm mbq cartesian3d_t
R 659 5 8 mpi3dcomm pbq cartesian3d_t
R 660 5 9 mpi3dcomm lnq cartesian3d_t
R 661 5 10 mpi3dcomm nr cartesian3d_t
R 662 5 11 mpi3dcomm mr cartesian3d_t
R 663 5 12 mpi3dcomm pr cartesian3d_t
R 664 5 13 mpi3dcomm mbr cartesian3d_t
R 665 5 14 mpi3dcomm pbr cartesian3d_t
R 666 5 15 mpi3dcomm lnr cartesian3d_t
R 667 5 16 mpi3dcomm ns cartesian3d_t
R 668 5 17 mpi3dcomm ms cartesian3d_t
R 669 5 18 mpi3dcomm ps cartesian3d_t
R 670 5 19 mpi3dcomm mbs cartesian3d_t
R 671 5 20 mpi3dcomm pbs cartesian3d_t
R 672 5 21 mpi3dcomm lns cartesian3d_t
R 673 5 22 mpi3dcomm comm cartesian3d_t
R 674 5 23 mpi3dcomm rank cartesian3d_t
R 675 5 24 mpi3dcomm size_q cartesian3d_t
R 676 5 25 mpi3dcomm size_r cartesian3d_t
R 677 5 26 mpi3dcomm size_s cartesian3d_t
R 678 5 27 mpi3dcomm coord cartesian3d_t
R 679 5 28 mpi3dcomm rank_mq cartesian3d_t
R 680 5 29 mpi3dcomm rank_pq cartesian3d_t
R 681 5 30 mpi3dcomm rank_mr cartesian3d_t
R 682 5 31 mpi3dcomm rank_pr cartesian3d_t
R 683 5 32 mpi3dcomm rank_ms cartesian3d_t
R 684 5 33 mpi3dcomm rank_ps cartesian3d_t
R 685 5 34 mpi3dcomm line_q cartesian3d_t
R 686 5 35 mpi3dcomm line_r cartesian3d_t
R 687 5 36 mpi3dcomm line_s cartesian3d_t
R 688 5 37 mpi3dcomm block_q cartesian3d_t
R 689 5 38 mpi3dcomm block_r cartesian3d_t
R 690 5 39 mpi3dcomm block_s cartesian3d_t
R 691 5 40 mpi3dcomm block3d_qr cartesian3d_t
R 692 5 41 mpi3dcomm block3d_qs cartesian3d_t
R 693 5 42 mpi3dcomm block3d_rs cartesian3d_t
R 694 5 43 mpi3dcomm array_w cartesian3d_t
R 695 5 44 mpi3dcomm array_s cartesian3d_t
R 987 25 16 mpi3d_interface interface3d
R 988 5 17 mpi3d_interface n interface3d
R 989 5 18 mpi3d_interface coord interface3d
R 990 5 19 mpi3d_interface icoord interface3d
R 991 5 20 mpi3d_interface normal interface3d
R 992 5 21 mpi3d_interface comm interface3d
R 993 5 22 mpi3d_interface rank interface3d
R 994 5 23 mpi3d_interface rank_neighbor interface3d
R 995 5 24 mpi3d_interface on_interface interface3d
R 996 5 25 mpi3d_interface face_qr interface3d
R 997 5 26 mpi3d_interface face_qs interface3d
R 998 5 27 mpi3d_interface face_rs interface3d
S 1143 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 1144 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1158 25 13 datatypes block_grid_t
R 1159 5 14 datatypes c block_grid_t
R 1160 5 15 datatypes hq block_grid_t
R 1161 5 16 datatypes hr block_grid_t
R 1162 5 17 datatypes hs block_grid_t
R 1163 5 18 datatypes bhq block_grid_t
R 1164 5 19 datatypes bhr block_grid_t
R 1165 5 20 datatypes bhs block_grid_t
R 1170 5 25 datatypes x block_grid_t
R 1171 5 26 datatypes x$sd block_grid_t
R 1172 5 27 datatypes x$p block_grid_t
R 1173 5 28 datatypes x$o block_grid_t
R 1179 5 34 datatypes metricx block_grid_t
R 1180 5 35 datatypes metricx$sd block_grid_t
R 1181 5 36 datatypes metricx$p block_grid_t
R 1182 5 37 datatypes metricx$o block_grid_t
R 1184 5 39 datatypes metricy block_grid_t
R 1189 5 44 datatypes metricy$sd block_grid_t
R 1190 5 45 datatypes metricy$p block_grid_t
R 1191 5 46 datatypes metricy$o block_grid_t
R 1193 5 48 datatypes metricz block_grid_t
R 1198 5 53 datatypes metricz$sd block_grid_t
R 1199 5 54 datatypes metricz$p block_grid_t
R 1200 5 55 datatypes metricz$o block_grid_t
R 1205 5 60 datatypes j block_grid_t
R 1206 5 61 datatypes j$sd block_grid_t
R 1207 5 62 datatypes j$p block_grid_t
R 1208 5 63 datatypes j$o block_grid_t
R 1212 25 67 datatypes block_material
R 1217 5 72 datatypes m block_material
R 1218 5 73 datatypes m$sd block_material
R 1219 5 74 datatypes m$p block_material
R 1220 5 75 datatypes m$o block_material
R 1224 25 79 datatypes block_plastic
R 1225 5 80 datatypes mu_beta_eta block_plastic
R 1230 5 85 datatypes p block_plastic
R 1231 5 86 datatypes p$sd block_plastic
R 1232 5 87 datatypes p$p block_plastic
R 1233 5 88 datatypes p$o block_plastic
R 1237 25 92 datatypes block_fields
R 1242 5 97 datatypes f block_fields
R 1243 5 98 datatypes f$sd block_fields
R 1244 5 99 datatypes f$p block_fields
R 1245 5 100 datatypes f$o block_fields
R 1251 5 106 datatypes df block_fields
R 1252 5 107 datatypes df$sd block_fields
R 1253 5 108 datatypes df$p block_fields
R 1254 5 109 datatypes df$o block_fields
R 1258 25 113 datatypes block_boundary
R 1262 5 117 datatypes x block_boundary
R 1263 5 118 datatypes x$sd block_boundary
R 1264 5 119 datatypes x$p block_boundary
R 1265 5 120 datatypes x$o block_boundary
R 1270 5 125 datatypes m block_boundary
R 1271 5 126 datatypes m$sd block_boundary
R 1272 5 127 datatypes m$p block_boundary
R 1273 5 128 datatypes m$o block_boundary
R 1278 5 133 datatypes n_l block_boundary
R 1279 5 134 datatypes n_l$sd block_boundary
R 1280 5 135 datatypes n_l$p block_boundary
R 1281 5 136 datatypes n_l$o block_boundary
R 1283 5 138 datatypes n_m block_boundary
R 1287 5 142 datatypes n_m$sd block_boundary
R 1288 5 143 datatypes n_m$p block_boundary
R 1289 5 144 datatypes n_m$o block_boundary
R 1291 5 146 datatypes n_n block_boundary
R 1295 5 150 datatypes n_n$sd block_boundary
R 1296 5 151 datatypes n_n$p block_boundary
R 1297 5 152 datatypes n_n$o block_boundary
R 1302 5 157 datatypes f block_boundary
R 1303 5 158 datatypes f$sd block_boundary
R 1304 5 159 datatypes f$p block_boundary
R 1305 5 160 datatypes f$o block_boundary
R 1310 5 165 datatypes df block_boundary
R 1311 5 166 datatypes df$sd block_boundary
R 1312 5 167 datatypes df$p block_boundary
R 1313 5 168 datatypes df$o block_boundary
R 1318 5 173 datatypes fopp block_boundary
R 1319 5 174 datatypes fopp$sd block_boundary
R 1320 5 175 datatypes fopp$p block_boundary
R 1321 5 176 datatypes fopp$o block_boundary
R 1326 5 181 datatypes mopp block_boundary
R 1327 5 182 datatypes mopp$sd block_boundary
R 1328 5 183 datatypes mopp$p block_boundary
R 1329 5 184 datatypes mopp$o block_boundary
R 1334 5 189 datatypes u block_boundary
R 1335 5 190 datatypes u$sd block_boundary
R 1336 5 191 datatypes u$p block_boundary
R 1337 5 192 datatypes u$o block_boundary
R 1339 5 194 datatypes du block_boundary
R 1343 5 198 datatypes du$sd block_boundary
R 1344 5 199 datatypes du$p block_boundary
R 1345 5 200 datatypes du$o block_boundary
R 1358 25 213 datatypes moment_tensor
R 1359 5 214 datatypes use_moment_tensor moment_tensor
R 1361 5 216 datatypes source_type moment_tensor
R 1362 5 217 datatypes source_type$sd moment_tensor
R 1363 5 218 datatypes source_type$p moment_tensor
R 1364 5 219 datatypes source_type$o moment_tensor
R 1367 5 222 datatypes mxx moment_tensor
R 1368 5 223 datatypes mxx$sd moment_tensor
R 1369 5 224 datatypes mxx$p moment_tensor
R 1370 5 225 datatypes mxx$o moment_tensor
R 1372 5 227 datatypes mxy moment_tensor
R 1374 5 229 datatypes mxy$sd moment_tensor
R 1375 5 230 datatypes mxy$p moment_tensor
R 1376 5 231 datatypes mxy$o moment_tensor
R 1378 5 233 datatypes mxz moment_tensor
R 1380 5 235 datatypes mxz$sd moment_tensor
R 1381 5 236 datatypes mxz$p moment_tensor
R 1382 5 237 datatypes mxz$o moment_tensor
R 1384 5 239 datatypes myy moment_tensor
R 1386 5 241 datatypes myy$sd moment_tensor
R 1387 5 242 datatypes myy$p moment_tensor
R 1388 5 243 datatypes myy$o moment_tensor
R 1390 5 245 datatypes myz moment_tensor
R 1392 5 247 datatypes myz$sd moment_tensor
R 1393 5 248 datatypes myz$p moment_tensor
R 1394 5 249 datatypes myz$o moment_tensor
R 1396 5 251 datatypes mzz moment_tensor
R 1398 5 253 datatypes mzz$sd moment_tensor
R 1399 5 254 datatypes mzz$p moment_tensor
R 1400 5 255 datatypes mzz$o moment_tensor
R 1403 5 258 datatypes location_x moment_tensor
R 1404 5 259 datatypes location_x$sd moment_tensor
R 1405 5 260 datatypes location_x$p moment_tensor
R 1406 5 261 datatypes location_x$o moment_tensor
R 1408 5 263 datatypes location_y moment_tensor
R 1410 5 265 datatypes location_y$sd moment_tensor
R 1411 5 266 datatypes location_y$p moment_tensor
R 1412 5 267 datatypes location_y$o moment_tensor
R 1414 5 269 datatypes location_z moment_tensor
R 1416 5 271 datatypes location_z$sd moment_tensor
R 1417 5 272 datatypes location_z$p moment_tensor
R 1418 5 273 datatypes location_z$o moment_tensor
R 1421 5 276 datatypes near_x moment_tensor
R 1422 5 277 datatypes near_x$sd moment_tensor
R 1423 5 278 datatypes near_x$p moment_tensor
R 1424 5 279 datatypes near_x$o moment_tensor
R 1426 5 281 datatypes near_y moment_tensor
R 1428 5 283 datatypes near_y$sd moment_tensor
R 1429 5 284 datatypes near_y$p moment_tensor
R 1430 5 285 datatypes near_y$o moment_tensor
R 1432 5 287 datatypes near_z moment_tensor
R 1434 5 289 datatypes near_z$sd moment_tensor
R 1435 5 290 datatypes near_z$p moment_tensor
R 1436 5 291 datatypes near_z$o moment_tensor
R 1438 5 293 datatypes alpha moment_tensor
R 1440 5 295 datatypes alpha$sd moment_tensor
R 1441 5 296 datatypes alpha$p moment_tensor
R 1442 5 297 datatypes alpha$o moment_tensor
R 1445 5 300 datatypes near_phys_x moment_tensor
R 1446 5 301 datatypes near_phys_x$sd moment_tensor
R 1447 5 302 datatypes near_phys_x$p moment_tensor
R 1448 5 303 datatypes near_phys_x$o moment_tensor
R 1450 5 305 datatypes near_phys_y moment_tensor
R 1452 5 307 datatypes near_phys_y$sd moment_tensor
R 1453 5 308 datatypes near_phys_y$p moment_tensor
R 1454 5 309 datatypes near_phys_y$o moment_tensor
R 1456 5 311 datatypes near_phys_z moment_tensor
R 1458 5 313 datatypes near_phys_z$sd moment_tensor
R 1459 5 314 datatypes near_phys_z$p moment_tensor
R 1460 5 315 datatypes near_phys_z$o moment_tensor
R 1466 5 321 datatypes exact moment_tensor
R 1467 5 322 datatypes exact$sd moment_tensor
R 1468 5 323 datatypes exact$p moment_tensor
R 1469 5 324 datatypes exact$o moment_tensor
R 1472 5 327 datatypes duration moment_tensor
R 1473 5 328 datatypes duration$sd moment_tensor
R 1474 5 329 datatypes duration$p moment_tensor
R 1475 5 330 datatypes duration$o moment_tensor
R 1477 5 332 datatypes t_init moment_tensor
R 1479 5 334 datatypes t_init$sd moment_tensor
R 1480 5 335 datatypes t_init$p moment_tensor
R 1481 5 336 datatypes t_init$o moment_tensor
R 1483 5 338 datatypes order moment_tensor
R 1484 5 339 datatypes block_id moment_tensor
R 1485 5 340 datatypes num_tensor moment_tensor
R 1488 25 343 datatypes block_pml
R 1489 5 344 datatypes pml block_pml
R 1490 5 345 datatypes n_pml block_pml
R 1491 5 346 datatypes c block_pml
R 1496 5 351 datatypes q block_pml
R 1497 5 352 datatypes q$sd block_pml
R 1498 5 353 datatypes q$p block_pml
R 1499 5 354 datatypes q$o block_pml
R 1505 5 360 datatypes dq block_pml
R 1506 5 361 datatypes dq$sd block_pml
R 1507 5 362 datatypes dq$p block_pml
R 1508 5 363 datatypes dq$o block_pml
R 1512 25 367 datatypes block_sbp
R 1513 5 368 datatypes bnd_pts block_sbp
R 1516 5 371 datatypes dp block_sbp
R 1517 5 372 datatypes dp$sd block_sbp
R 1518 5 373 datatypes dp$p block_sbp
R 1519 5 374 datatypes dp$o block_sbp
R 1523 5 378 datatypes dm block_sbp
R 1524 5 379 datatypes dm$sd block_sbp
R 1525 5 380 datatypes dm$p block_sbp
R 1526 5 381 datatypes dm$o block_sbp
R 1530 25 385 datatypes block_type
R 1531 5 386 datatypes id block_type
R 1532 5 387 datatypes physics block_type
R 1533 5 388 datatypes fd_type block_type
R 1534 5 389 datatypes order block_type
R 1535 5 390 datatypes nb block_type
R 1536 5 391 datatypes i block_type
R 1537 5 392 datatypes g block_type
R 1538 5 393 datatypes m block_type
R 1539 5 394 datatypes f block_type
R 1540 5 395 datatypes mt block_type
R 1541 5 396 datatypes p block_type
R 1542 5 397 datatypes b block_type
R 1543 5 398 datatypes boundary_vars block_type
R 1544 5 399 datatypes pmlb block_type
R 1545 5 400 datatypes tau0 block_type
R 1546 5 401 datatypes rho_s_p block_type
R 1547 5 402 datatypes sum block_type
R 1548 5 403 datatypes dx block_type
R 1551 25 406 datatypes iface_type
R 1552 5 407 datatypes id iface_type
R 1553 5 408 datatypes im iface_type
R 1554 5 409 datatypes ip iface_type
R 1555 5 410 datatypes direction iface_type
R 1559 5 414 datatypes v iface_type
R 1560 5 415 datatypes v$sd iface_type
R 1561 5 416 datatypes v$p iface_type
R 1562 5 417 datatypes v$o iface_type
R 1564 5 419 datatypes dv iface_type
R 1568 5 423 datatypes dv$sd iface_type
R 1569 5 424 datatypes dv$p iface_type
R 1570 5 425 datatypes dv$o iface_type
R 1575 5 430 datatypes t iface_type
R 1576 5 431 datatypes t$sd iface_type
R 1577 5 432 datatypes t$p iface_type
R 1578 5 433 datatypes t$o iface_type
R 1583 5 438 datatypes s iface_type
R 1584 5 439 datatypes s$sd iface_type
R 1585 5 440 datatypes s$p iface_type
R 1586 5 441 datatypes s$o iface_type
R 1588 5 443 datatypes ds iface_type
R 1592 5 447 datatypes ds$sd iface_type
R 1593 5 448 datatypes ds$p iface_type
R 1594 5 449 datatypes ds$o iface_type
R 1599 5 454 datatypes w iface_type
R 1600 5 455 datatypes w$sd iface_type
R 1601 5 456 datatypes w$p iface_type
R 1602 5 457 datatypes w$o iface_type
R 1604 5 459 datatypes dw iface_type
R 1608 5 463 datatypes dw$sd iface_type
R 1609 5 464 datatypes dw$p iface_type
R 1610 5 465 datatypes dw$o iface_type
R 1615 5 470 datatypes svel iface_type
R 1616 5 471 datatypes svel$sd iface_type
R 1617 5 472 datatypes svel$p iface_type
R 1618 5 473 datatypes svel$o iface_type
R 1623 5 478 datatypes trup iface_type
R 1624 5 479 datatypes trup$sd iface_type
R 1625 5 480 datatypes trup$p iface_type
R 1626 5 481 datatypes trup$o iface_type
R 1628 5 483 datatypes ii iface_type
R 1631 25 486 datatypes fault_type
R 1632 5 487 datatypes handles fault_type
R 1633 5 488 datatypes array_s fault_type
R 1637 5 492 datatypes time_rup fault_type
R 1638 5 493 datatypes time_rup$sd fault_type
R 1639 5 494 datatypes time_rup$p fault_type
R 1640 5 495 datatypes time_rup$o fault_type
R 1645 5 500 datatypes w fault_type
R 1646 5 501 datatypes w$sd fault_type
R 1647 5 502 datatypes w$p fault_type
R 1648 5 503 datatypes w$o fault_type
R 1653 5 508 datatypes slip fault_type
R 1654 5 509 datatypes slip$sd fault_type
R 1655 5 510 datatypes slip$p fault_type
R 1656 5 511 datatypes slip$o fault_type
R 1661 5 516 datatypes svel fault_type
R 1662 5 517 datatypes svel$sd fault_type
R 1663 5 518 datatypes svel$p fault_type
R 1664 5 519 datatypes svel$o fault_type
R 1669 5 524 datatypes u_pluspres fault_type
R 1670 5 525 datatypes u_pluspres$sd fault_type
R 1671 5 526 datatypes u_pluspres$p fault_type
R 1672 5 527 datatypes u_pluspres$o fault_type
R 1674 5 529 datatypes v_pluspres fault_type
R 1678 5 533 datatypes v_pluspres$sd fault_type
R 1679 5 534 datatypes v_pluspres$p fault_type
R 1680 5 535 datatypes v_pluspres$o fault_type
R 1682 5 537 datatypes uhat_pluspres fault_type
R 1686 5 541 datatypes uhat_pluspres$sd fault_type
R 1687 5 542 datatypes uhat_pluspres$p fault_type
R 1688 5 543 datatypes uhat_pluspres$o fault_type
R 1690 5 545 datatypes vhat_pluspres fault_type
R 1694 5 549 datatypes vhat_pluspres$sd fault_type
R 1695 5 550 datatypes vhat_pluspres$p fault_type
R 1696 5 551 datatypes vhat_pluspres$o fault_type
R 1707 25 562 datatypes seismogram_type
R 1708 5 563 datatypes output_exact_moment seismogram_type
R 1709 5 564 datatypes output_seismograms seismogram_type
R 1710 5 565 datatypes output_fields_block1 seismogram_type
R 1711 5 566 datatypes output_fields_block2 seismogram_type
R 1712 5 567 datatypes stride_fields seismogram_type
R 1713 5 568 datatypes file_unit_block1 seismogram_type
R 1714 5 569 datatypes file_unit_block2 seismogram_type
R 1715 5 570 datatypes nstations seismogram_type
R 1716 5 571 datatypes block_num seismogram_type
R 1718 5 573 datatypes i seismogram_type
R 1719 5 574 datatypes i$sd seismogram_type
R 1720 5 575 datatypes i$p seismogram_type
R 1721 5 576 datatypes i$o seismogram_type
R 1724 5 579 datatypes j seismogram_type
R 1725 5 580 datatypes j$sd seismogram_type
R 1726 5 581 datatypes j$p seismogram_type
R 1727 5 582 datatypes j$o seismogram_type
R 1729 5 584 datatypes k seismogram_type
R 1731 5 586 datatypes k$sd seismogram_type
R 1732 5 587 datatypes k$p seismogram_type
R 1733 5 588 datatypes k$o seismogram_type
R 1735 5 590 datatypes file_unit seismogram_type
R 1737 5 592 datatypes file_unit$sd seismogram_type
R 1738 5 593 datatypes file_unit$p seismogram_type
R 1739 5 594 datatypes file_unit$o seismogram_type
R 1742 5 597 datatypes i_phys seismogram_type
R 1743 5 598 datatypes i_phys$sd seismogram_type
R 1744 5 599 datatypes i_phys$p seismogram_type
R 1745 5 600 datatypes i_phys$o seismogram_type
R 1747 5 602 datatypes j_phys seismogram_type
R 1749 5 604 datatypes j_phys$sd seismogram_type
R 1750 5 605 datatypes j_phys$p seismogram_type
R 1751 5 606 datatypes j_phys$o seismogram_type
R 1753 5 608 datatypes k_phys seismogram_type
R 1755 5 610 datatypes k_phys$sd seismogram_type
R 1756 5 611 datatypes k_phys$p seismogram_type
R 1757 5 612 datatypes k_phys$o seismogram_type
R 1770 25 625 datatypes domain_type
R 1771 5 626 datatypes nblocks domain_type
R 1772 5 627 datatypes nifaces domain_type
R 1773 5 628 datatypes w_stride domain_type
R 1774 5 629 datatypes dt domain_type
R 1775 5 630 datatypes t domain_type
R 1776 5 631 datatypes t_final domain_type
R 1777 5 632 datatypes cfl domain_type
R 1778 5 633 datatypes topo domain_type
R 1779 5 634 datatypes nt domain_type
R 1781 5 636 datatypes b domain_type
R 1782 5 637 datatypes b$sd domain_type
R 1783 5 638 datatypes b$p domain_type
R 1784 5 639 datatypes b$o domain_type
R 1787 5 642 datatypes i domain_type
R 1788 5 643 datatypes i$sd domain_type
R 1789 5 644 datatypes i$p domain_type
R 1790 5 645 datatypes i$o domain_type
R 1792 5 647 datatypes fault domain_type
R 1793 5 648 datatypes mms_vars domain_type
R 1794 5 649 datatypes name domain_type
R 1795 5 650 datatypes problem domain_type
R 1796 5 651 datatypes response domain_type
R 1797 5 652 datatypes plastic_model domain_type
R 1798 5 653 datatypes coupling domain_type
R 1799 5 654 datatypes fd_type domain_type
R 1800 5 655 datatypes type_of_mesh domain_type
R 1801 5 656 datatypes mesh_source domain_type
R 1802 5 657 datatypes material_source domain_type
R 1803 5 658 datatypes w_fault domain_type
R 1804 5 659 datatypes output_fault_topo domain_type
R 1805 5 660 datatypes interpol domain_type
R 1806 5 661 datatypes use_topography domain_type
R 1807 5 662 datatypes mollify_source domain_type
R 1808 5 663 datatypes order domain_type
R 1809 5 664 datatypes seismometers domain_type
R 1811 5 666 datatypes seismometers$sd domain_type
R 1812 5 667 datatypes seismometers$p domain_type
R 1813 5 668 datatypes seismometers$o domain_type
R 1815 5 670 datatypes slicer domain_type
S 1840 23 5 0 0 0 1844 624 13254 0 0 A 0 0 0 0 B 0 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 init_boundary
S 1841 7 3 2 0 1112 1 1840 10688 800004 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 b
S 1842 1 3 1 0 339 1 1840 10683 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 g
S 1843 1 3 1 0 30 1 1840 10667 4 43000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 physics
S 1844 14 5 0 0 0 1 1840 13254 0 400000 A 0 0 0 0 B 0 14 0 0 0 0 0 213 3 0 0 0 0 0 0 0 0 0 0 0 0 14 0 624 0 0 0 0 init_boundary init_boundary 
F 1844 3 1841 1842 1843
S 1845 23 5 0 0 0 1849 624 13268 0 0 A 0 0 0 0 B 0 124 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 exchange_fields_across_interface
S 1846 1 3 3 0 450 1 1845 10688 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 b
S 1847 1 3 1 0 58 1 1845 5544 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 1848 1 3 1 0 159 1 1845 7027 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 i
S 1849 14 5 0 0 0 1 1845 13268 0 400000 A 0 0 0 0 B 0 124 0 0 0 0 0 217 3 0 0 0 0 0 0 0 0 0 0 0 0 124 0 624 0 0 0 0 exchange_fields_across_interface exchange_fields_across_interface 
F 1849 3 1846 1847 1848
S 1850 23 5 0 0 0 1854 624 13301 0 0 A 0 0 0 0 B 0 140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 exchange_materials_across_interface
S 1851 1 3 3 0 450 1 1850 10688 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 b
S 1852 1 3 1 0 58 1 1850 5544 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 1853 1 3 1 0 159 1 1850 7027 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 i
S 1854 14 5 0 0 0 1 1850 13301 0 400000 A 0 0 0 0 B 0 140 0 0 0 0 0 221 3 0 0 0 0 0 0 0 0 0 0 0 0 140 0 624 0 0 0 0 exchange_materials_across_interface exchange_materials_across_interface 
F 1854 3 1851 1852 1853
A 98 2 0 0 76 7 635 0 0 0 98 0 0 0 0 0 0 0 0 0 0 0
A 120 2 0 0 85 7 644 0 0 0 120 0 0 0 0 0 0 0 0 0 0 0
A 160 2 0 0 70 7 648 0 0 0 160 0 0 0 0 0 0 0 0 0 0 0
A 728 2 0 0 108 7 1143 0 0 0 728 0 0 0 0 0 0 0 0 0 0 0
A 976 2 0 0 116 7 1144 0 0 0 976 0 0 0 0 0 0 0 0 0 0 0
Z
T 1158 339 0 0 0 0
A 1172 7 375 0 1 2 1
A 1171 7 0 160 1 10 1
A 1181 7 377 0 1 2 1
A 1180 7 0 160 1 10 1
A 1190 7 379 0 1 2 1
A 1189 7 0 160 1 10 1
A 1199 7 381 0 1 2 1
A 1198 7 0 160 1 10 1
A 1207 7 383 0 1 2 1
A 1206 7 0 120 1 10 0
T 1212 388 0 0 0 0
A 1219 7 400 0 1 2 1
A 1218 7 0 160 1 10 0
T 1224 405 0 0 0 0
A 1232 7 420 0 1 2 1
A 1231 7 0 160 1 10 0
T 1237 425 0 0 0 0
A 1244 7 443 0 1 2 1
A 1243 7 0 160 1 10 1
A 1253 7 445 0 1 2 1
A 1252 7 0 160 1 10 0
T 1258 450 0 0 0 0
A 1264 7 522 0 1 2 1
A 1263 7 0 120 1 10 1
A 1272 7 524 0 1 2 1
A 1271 7 0 120 1 10 1
A 1280 7 526 0 1 2 1
A 1279 7 0 120 1 10 1
A 1288 7 528 0 1 2 1
A 1287 7 0 120 1 10 1
A 1296 7 530 0 1 2 1
A 1295 7 0 120 1 10 1
A 1304 7 532 0 1 2 1
A 1303 7 0 120 1 10 1
A 1312 7 534 0 1 2 1
A 1311 7 0 120 1 10 1
A 1320 7 536 0 1 2 1
A 1319 7 0 120 1 10 1
A 1328 7 538 0 1 2 1
A 1327 7 0 120 1 10 1
A 1336 7 540 0 1 2 1
A 1335 7 0 120 1 10 1
A 1344 7 542 0 1 2 1
A 1343 7 0 120 1 10 0
T 1358 556 0 0 0 0
A 1363 7 684 0 1 2 1
A 1362 7 0 728 1 10 1
A 1369 7 686 0 1 2 1
A 1368 7 0 728 1 10 1
A 1375 7 688 0 1 2 1
A 1374 7 0 728 1 10 1
A 1381 7 690 0 1 2 1
A 1380 7 0 728 1 10 1
A 1387 7 692 0 1 2 1
A 1386 7 0 728 1 10 1
A 1393 7 694 0 1 2 1
A 1392 7 0 728 1 10 1
A 1399 7 696 0 1 2 1
A 1398 7 0 728 1 10 1
A 1405 7 698 0 1 2 1
A 1404 7 0 728 1 10 1
A 1411 7 700 0 1 2 1
A 1410 7 0 728 1 10 1
A 1417 7 702 0 1 2 1
A 1416 7 0 728 1 10 1
A 1423 7 704 0 1 2 1
A 1422 7 0 728 1 10 1
A 1429 7 706 0 1 2 1
A 1428 7 0 728 1 10 1
A 1435 7 708 0 1 2 1
A 1434 7 0 728 1 10 1
A 1441 7 710 0 1 2 1
A 1440 7 0 728 1 10 1
A 1447 7 712 0 1 2 1
A 1446 7 0 728 1 10 1
A 1453 7 714 0 1 2 1
A 1452 7 0 728 1 10 1
A 1459 7 716 0 1 2 1
A 1458 7 0 728 1 10 1
A 1468 7 718 0 1 2 1
A 1467 7 0 160 1 10 1
A 1474 7 720 0 1 2 1
A 1473 7 0 728 1 10 1
A 1480 7 722 0 1 2 1
A 1479 7 0 728 1 10 0
T 1488 727 0 0 0 0
A 1498 7 745 0 1 2 1
A 1497 7 0 160 1 10 1
A 1507 7 747 0 1 2 1
A 1506 7 0 160 1 10 0
T 1512 752 0 0 0 0
A 1518 7 770 0 1 2 1
A 1517 7 0 98 1 10 1
A 1525 7 772 0 1 2 1
A 1524 7 0 98 1 10 0
T 1530 777 0 3 0 0
T 1537 339 0 3 0 1
A 1172 7 375 0 1 2 1
A 1171 7 0 160 1 10 1
A 1181 7 377 0 1 2 1
A 1180 7 0 160 1 10 1
A 1190 7 379 0 1 2 1
A 1189 7 0 160 1 10 1
A 1199 7 381 0 1 2 1
A 1198 7 0 160 1 10 1
A 1207 7 383 0 1 2 1
A 1206 7 0 120 1 10 0
T 1538 388 0 3 0 1
A 1219 7 400 0 1 2 1
A 1218 7 0 160 1 10 0
T 1539 425 0 3 0 1
A 1244 7 443 0 1 2 1
A 1243 7 0 160 1 10 1
A 1253 7 445 0 1 2 1
A 1252 7 0 160 1 10 0
T 1540 556 0 3 0 1
A 1363 7 684 0 1 2 1
A 1362 7 0 728 1 10 1
A 1369 7 686 0 1 2 1
A 1368 7 0 728 1 10 1
A 1375 7 688 0 1 2 1
A 1374 7 0 728 1 10 1
A 1381 7 690 0 1 2 1
A 1380 7 0 728 1 10 1
A 1387 7 692 0 1 2 1
A 1386 7 0 728 1 10 1
A 1393 7 694 0 1 2 1
A 1392 7 0 728 1 10 1
A 1399 7 696 0 1 2 1
A 1398 7 0 728 1 10 1
A 1405 7 698 0 1 2 1
A 1404 7 0 728 1 10 1
A 1411 7 700 0 1 2 1
A 1410 7 0 728 1 10 1
A 1417 7 702 0 1 2 1
A 1416 7 0 728 1 10 1
A 1423 7 704 0 1 2 1
A 1422 7 0 728 1 10 1
A 1429 7 706 0 1 2 1
A 1428 7 0 728 1 10 1
A 1435 7 708 0 1 2 1
A 1434 7 0 728 1 10 1
A 1441 7 710 0 1 2 1
A 1440 7 0 728 1 10 1
A 1447 7 712 0 1 2 1
A 1446 7 0 728 1 10 1
A 1453 7 714 0 1 2 1
A 1452 7 0 728 1 10 1
A 1459 7 716 0 1 2 1
A 1458 7 0 728 1 10 1
A 1468 7 718 0 1 2 1
A 1467 7 0 160 1 10 1
A 1474 7 720 0 1 2 1
A 1473 7 0 728 1 10 1
A 1480 7 722 0 1 2 1
A 1479 7 0 728 1 10 0
T 1541 405 0 3 0 1
A 1232 7 420 0 1 2 1
A 1231 7 0 160 1 10 0
T 1542 450 0 976 0 1
A 1264 7 522 0 1 2 1
A 1263 7 0 120 1 10 1
A 1272 7 524 0 1 2 1
A 1271 7 0 120 1 10 1
A 1280 7 526 0 1 2 1
A 1279 7 0 120 1 10 1
A 1288 7 528 0 1 2 1
A 1287 7 0 120 1 10 1
A 1296 7 530 0 1 2 1
A 1295 7 0 120 1 10 1
A 1304 7 532 0 1 2 1
A 1303 7 0 120 1 10 1
A 1312 7 534 0 1 2 1
A 1311 7 0 120 1 10 1
A 1320 7 536 0 1 2 1
A 1319 7 0 120 1 10 1
A 1328 7 538 0 1 2 1
A 1327 7 0 120 1 10 1
A 1336 7 540 0 1 2 1
A 1335 7 0 120 1 10 1
A 1344 7 542 0 1 2 1
A 1343 7 0 120 1 10 0
T 1544 727 0 976 0 1
A 1498 7 745 0 1 2 1
A 1497 7 0 160 1 10 1
A 1507 7 747 0 1 2 1
A 1506 7 0 160 1 10 0
T 1548 752 0 3 0 0
A 1518 7 770 0 1 2 1
A 1517 7 0 98 1 10 1
A 1525 7 772 0 1 2 1
A 1524 7 0 98 1 10 0
T 1551 795 0 0 0 0
A 1561 7 855 0 1 2 1
A 1560 7 0 120 1 10 1
A 1569 7 857 0 1 2 1
A 1568 7 0 120 1 10 1
A 1577 7 859 0 1 2 1
A 1576 7 0 120 1 10 1
A 1585 7 861 0 1 2 1
A 1584 7 0 120 1 10 1
A 1593 7 863 0 1 2 1
A 1592 7 0 120 1 10 1
A 1601 7 865 0 1 2 1
A 1600 7 0 120 1 10 1
A 1609 7 867 0 1 2 1
A 1608 7 0 120 1 10 1
A 1617 7 869 0 1 2 1
A 1616 7 0 120 1 10 1
A 1625 7 871 0 1 2 1
A 1624 7 0 120 1 10 0
T 1631 876 0 0 0 0
A 1639 7 933 0 1 2 1
A 1638 7 0 120 1 10 1
A 1647 7 935 0 1 2 1
A 1646 7 0 120 1 10 1
A 1655 7 937 0 1 2 1
A 1654 7 0 120 1 10 1
A 1663 7 939 0 1 2 1
A 1662 7 0 120 1 10 1
A 1671 7 941 0 1 2 1
A 1670 7 0 120 1 10 1
A 1679 7 943 0 1 2 1
A 1678 7 0 120 1 10 1
A 1687 7 945 0 1 2 1
A 1686 7 0 120 1 10 1
A 1695 7 947 0 1 2 1
A 1694 7 0 120 1 10 0
T 1707 961 0 0 0 0
A 1720 7 1015 0 1 2 1
A 1719 7 0 728 1 10 1
A 1726 7 1017 0 1 2 1
A 1725 7 0 728 1 10 1
A 1732 7 1019 0 1 2 1
A 1731 7 0 728 1 10 1
A 1738 7 1021 0 1 2 1
A 1737 7 0 728 1 10 1
A 1744 7 1023 0 1 2 1
A 1743 7 0 728 1 10 1
A 1750 7 1025 0 1 2 1
A 1749 7 0 728 1 10 1
A 1756 7 1027 0 1 2 1
A 1755 7 0 728 1 10 0
T 1770 1041 0 3 0 0
T 1792 876 0 3 0 0
A 1639 7 933 0 1 2 1
A 1638 7 0 120 1 10 1
A 1647 7 935 0 1 2 1
A 1646 7 0 120 1 10 1
A 1655 7 937 0 1 2 1
A 1654 7 0 120 1 10 1
A 1663 7 939 0 1 2 1
A 1662 7 0 120 1 10 1
A 1671 7 941 0 1 2 1
A 1670 7 0 120 1 10 1
A 1679 7 943 0 1 2 1
A 1678 7 0 120 1 10 1
A 1687 7 945 0 1 2 1
A 1686 7 0 120 1 10 1
A 1695 7 947 0 1 2 1
A 1694 7 0 120 1 10 0
Z
