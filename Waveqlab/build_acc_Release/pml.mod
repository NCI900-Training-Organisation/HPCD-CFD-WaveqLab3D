V34 :0x34 pml
7 pml.f90 S624 0
07/15/2023  10:30:32
use datatypes private
use common private
enduse
D 339 26 1162 1616 1161 7
D 375 22 7
D 377 22 7
D 379 22 7
D 381 22 7
D 383 22 7
D 388 26 1220 288 1215 7
D 400 22 7
D 405 26 1228 312 1227 7
D 420 22 7
D 425 26 1245 576 1240 7
D 443 22 7
D 445 22 7
D 450 26 1265 2640 1261 7
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
D 556 26 1362 3048 1361 7
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
D 727 26 1492 760 1491 7
D 745 22 7
D 747 22 7
D 752 26 1516 392 1515 7
D 770 22 7
D 772 22 7
D 777 26 1534 26888 1533 7
D 795 26 1555 2248 1554 7
D 855 22 7
D 857 22 7
D 859 22 7
D 861 22 7
D 863 22 7
D 865 22 7
D 867 22 7
D 869 22 7
D 871 22 7
D 876 26 1635 4104 1634 7
D 933 22 7
D 935 22 7
D 937 22 7
D 939 22 7
D 941 22 7
D 943 22 7
D 945 22 7
D 947 22 7
D 961 26 1711 1112 1710 7
D 1015 22 7
D 1017 22 7
D 1019 22 7
D 1021 22 7
D 1023 22 7
D 1025 22 7
D 1027 22 7
D 1041 26 1774 6576 1773 7
S 624 24 0 0 0 10 1 0 5013 10005 0 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 pml
S 626 23 0 0 0 10 635 624 5024 4 0 A 0 0 0 0 B 400000 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wp
S 628 23 0 0 0 10 1533 624 5037 4 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 block_type
S 629 23 0 0 0 10 1161 624 5048 4 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 block_grid_t
S 630 23 0 0 0 10 1153 624 5061 4 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 block_indices
S 631 23 0 0 0 10 1491 624 5075 4 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 block_pml
R 635 16 3 common wp
S 638 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 647 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 651 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 1146 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 1147 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1153 25 5 datatypes block_indices
R 1161 25 13 datatypes block_grid_t
R 1162 5 14 datatypes c block_grid_t
R 1163 5 15 datatypes hq block_grid_t
R 1164 5 16 datatypes hr block_grid_t
R 1165 5 17 datatypes hs block_grid_t
R 1166 5 18 datatypes bhq block_grid_t
R 1167 5 19 datatypes bhr block_grid_t
R 1168 5 20 datatypes bhs block_grid_t
R 1173 5 25 datatypes x block_grid_t
R 1174 5 26 datatypes x$sd block_grid_t
R 1175 5 27 datatypes x$p block_grid_t
R 1176 5 28 datatypes x$o block_grid_t
R 1182 5 34 datatypes metricx block_grid_t
R 1183 5 35 datatypes metricx$sd block_grid_t
R 1184 5 36 datatypes metricx$p block_grid_t
R 1185 5 37 datatypes metricx$o block_grid_t
R 1187 5 39 datatypes metricy block_grid_t
R 1192 5 44 datatypes metricy$sd block_grid_t
R 1193 5 45 datatypes metricy$p block_grid_t
R 1194 5 46 datatypes metricy$o block_grid_t
R 1196 5 48 datatypes metricz block_grid_t
R 1201 5 53 datatypes metricz$sd block_grid_t
R 1202 5 54 datatypes metricz$p block_grid_t
R 1203 5 55 datatypes metricz$o block_grid_t
R 1208 5 60 datatypes j block_grid_t
R 1209 5 61 datatypes j$sd block_grid_t
R 1210 5 62 datatypes j$p block_grid_t
R 1211 5 63 datatypes j$o block_grid_t
R 1215 25 67 datatypes block_material
R 1220 5 72 datatypes m block_material
R 1221 5 73 datatypes m$sd block_material
R 1222 5 74 datatypes m$p block_material
R 1223 5 75 datatypes m$o block_material
R 1227 25 79 datatypes block_plastic
R 1228 5 80 datatypes mu_beta_eta block_plastic
R 1233 5 85 datatypes p block_plastic
R 1234 5 86 datatypes p$sd block_plastic
R 1235 5 87 datatypes p$p block_plastic
R 1236 5 88 datatypes p$o block_plastic
R 1240 25 92 datatypes block_fields
R 1245 5 97 datatypes f block_fields
R 1246 5 98 datatypes f$sd block_fields
R 1247 5 99 datatypes f$p block_fields
R 1248 5 100 datatypes f$o block_fields
R 1254 5 106 datatypes df block_fields
R 1255 5 107 datatypes df$sd block_fields
R 1256 5 108 datatypes df$p block_fields
R 1257 5 109 datatypes df$o block_fields
R 1261 25 113 datatypes block_boundary
R 1265 5 117 datatypes x block_boundary
R 1266 5 118 datatypes x$sd block_boundary
R 1267 5 119 datatypes x$p block_boundary
R 1268 5 120 datatypes x$o block_boundary
R 1273 5 125 datatypes m block_boundary
R 1274 5 126 datatypes m$sd block_boundary
R 1275 5 127 datatypes m$p block_boundary
R 1276 5 128 datatypes m$o block_boundary
R 1281 5 133 datatypes n_l block_boundary
R 1282 5 134 datatypes n_l$sd block_boundary
R 1283 5 135 datatypes n_l$p block_boundary
R 1284 5 136 datatypes n_l$o block_boundary
R 1286 5 138 datatypes n_m block_boundary
R 1290 5 142 datatypes n_m$sd block_boundary
R 1291 5 143 datatypes n_m$p block_boundary
R 1292 5 144 datatypes n_m$o block_boundary
R 1294 5 146 datatypes n_n block_boundary
R 1298 5 150 datatypes n_n$sd block_boundary
R 1299 5 151 datatypes n_n$p block_boundary
R 1300 5 152 datatypes n_n$o block_boundary
R 1305 5 157 datatypes f block_boundary
R 1306 5 158 datatypes f$sd block_boundary
R 1307 5 159 datatypes f$p block_boundary
R 1308 5 160 datatypes f$o block_boundary
R 1313 5 165 datatypes df block_boundary
R 1314 5 166 datatypes df$sd block_boundary
R 1315 5 167 datatypes df$p block_boundary
R 1316 5 168 datatypes df$o block_boundary
R 1321 5 173 datatypes fopp block_boundary
R 1322 5 174 datatypes fopp$sd block_boundary
R 1323 5 175 datatypes fopp$p block_boundary
R 1324 5 176 datatypes fopp$o block_boundary
R 1329 5 181 datatypes mopp block_boundary
R 1330 5 182 datatypes mopp$sd block_boundary
R 1331 5 183 datatypes mopp$p block_boundary
R 1332 5 184 datatypes mopp$o block_boundary
R 1337 5 189 datatypes u block_boundary
R 1338 5 190 datatypes u$sd block_boundary
R 1339 5 191 datatypes u$p block_boundary
R 1340 5 192 datatypes u$o block_boundary
R 1342 5 194 datatypes du block_boundary
R 1346 5 198 datatypes du$sd block_boundary
R 1347 5 199 datatypes du$p block_boundary
R 1348 5 200 datatypes du$o block_boundary
R 1361 25 213 datatypes moment_tensor
R 1362 5 214 datatypes use_moment_tensor moment_tensor
R 1364 5 216 datatypes source_type moment_tensor
R 1365 5 217 datatypes source_type$sd moment_tensor
R 1366 5 218 datatypes source_type$p moment_tensor
R 1367 5 219 datatypes source_type$o moment_tensor
R 1370 5 222 datatypes mxx moment_tensor
R 1371 5 223 datatypes mxx$sd moment_tensor
R 1372 5 224 datatypes mxx$p moment_tensor
R 1373 5 225 datatypes mxx$o moment_tensor
R 1375 5 227 datatypes mxy moment_tensor
R 1377 5 229 datatypes mxy$sd moment_tensor
R 1378 5 230 datatypes mxy$p moment_tensor
R 1379 5 231 datatypes mxy$o moment_tensor
R 1381 5 233 datatypes mxz moment_tensor
R 1383 5 235 datatypes mxz$sd moment_tensor
R 1384 5 236 datatypes mxz$p moment_tensor
R 1385 5 237 datatypes mxz$o moment_tensor
R 1387 5 239 datatypes myy moment_tensor
R 1389 5 241 datatypes myy$sd moment_tensor
R 1390 5 242 datatypes myy$p moment_tensor
R 1391 5 243 datatypes myy$o moment_tensor
R 1393 5 245 datatypes myz moment_tensor
R 1395 5 247 datatypes myz$sd moment_tensor
R 1396 5 248 datatypes myz$p moment_tensor
R 1397 5 249 datatypes myz$o moment_tensor
R 1399 5 251 datatypes mzz moment_tensor
R 1401 5 253 datatypes mzz$sd moment_tensor
R 1402 5 254 datatypes mzz$p moment_tensor
R 1403 5 255 datatypes mzz$o moment_tensor
R 1406 5 258 datatypes location_x moment_tensor
R 1407 5 259 datatypes location_x$sd moment_tensor
R 1408 5 260 datatypes location_x$p moment_tensor
R 1409 5 261 datatypes location_x$o moment_tensor
R 1411 5 263 datatypes location_y moment_tensor
R 1413 5 265 datatypes location_y$sd moment_tensor
R 1414 5 266 datatypes location_y$p moment_tensor
R 1415 5 267 datatypes location_y$o moment_tensor
R 1417 5 269 datatypes location_z moment_tensor
R 1419 5 271 datatypes location_z$sd moment_tensor
R 1420 5 272 datatypes location_z$p moment_tensor
R 1421 5 273 datatypes location_z$o moment_tensor
R 1424 5 276 datatypes near_x moment_tensor
R 1425 5 277 datatypes near_x$sd moment_tensor
R 1426 5 278 datatypes near_x$p moment_tensor
R 1427 5 279 datatypes near_x$o moment_tensor
R 1429 5 281 datatypes near_y moment_tensor
R 1431 5 283 datatypes near_y$sd moment_tensor
R 1432 5 284 datatypes near_y$p moment_tensor
R 1433 5 285 datatypes near_y$o moment_tensor
R 1435 5 287 datatypes near_z moment_tensor
R 1437 5 289 datatypes near_z$sd moment_tensor
R 1438 5 290 datatypes near_z$p moment_tensor
R 1439 5 291 datatypes near_z$o moment_tensor
R 1441 5 293 datatypes alpha moment_tensor
R 1443 5 295 datatypes alpha$sd moment_tensor
R 1444 5 296 datatypes alpha$p moment_tensor
R 1445 5 297 datatypes alpha$o moment_tensor
R 1448 5 300 datatypes near_phys_x moment_tensor
R 1449 5 301 datatypes near_phys_x$sd moment_tensor
R 1450 5 302 datatypes near_phys_x$p moment_tensor
R 1451 5 303 datatypes near_phys_x$o moment_tensor
R 1453 5 305 datatypes near_phys_y moment_tensor
R 1455 5 307 datatypes near_phys_y$sd moment_tensor
R 1456 5 308 datatypes near_phys_y$p moment_tensor
R 1457 5 309 datatypes near_phys_y$o moment_tensor
R 1459 5 311 datatypes near_phys_z moment_tensor
R 1461 5 313 datatypes near_phys_z$sd moment_tensor
R 1462 5 314 datatypes near_phys_z$p moment_tensor
R 1463 5 315 datatypes near_phys_z$o moment_tensor
R 1469 5 321 datatypes exact moment_tensor
R 1470 5 322 datatypes exact$sd moment_tensor
R 1471 5 323 datatypes exact$p moment_tensor
R 1472 5 324 datatypes exact$o moment_tensor
R 1475 5 327 datatypes duration moment_tensor
R 1476 5 328 datatypes duration$sd moment_tensor
R 1477 5 329 datatypes duration$p moment_tensor
R 1478 5 330 datatypes duration$o moment_tensor
R 1480 5 332 datatypes t_init moment_tensor
R 1482 5 334 datatypes t_init$sd moment_tensor
R 1483 5 335 datatypes t_init$p moment_tensor
R 1484 5 336 datatypes t_init$o moment_tensor
R 1486 5 338 datatypes order moment_tensor
R 1487 5 339 datatypes block_id moment_tensor
R 1488 5 340 datatypes num_tensor moment_tensor
R 1491 25 343 datatypes block_pml
R 1492 5 344 datatypes pml block_pml
R 1493 5 345 datatypes n_pml block_pml
R 1494 5 346 datatypes c block_pml
R 1499 5 351 datatypes q block_pml
R 1500 5 352 datatypes q$sd block_pml
R 1501 5 353 datatypes q$p block_pml
R 1502 5 354 datatypes q$o block_pml
R 1508 5 360 datatypes dq block_pml
R 1509 5 361 datatypes dq$sd block_pml
R 1510 5 362 datatypes dq$p block_pml
R 1511 5 363 datatypes dq$o block_pml
R 1515 25 367 datatypes block_sbp
R 1516 5 368 datatypes bnd_pts block_sbp
R 1519 5 371 datatypes dp block_sbp
R 1520 5 372 datatypes dp$sd block_sbp
R 1521 5 373 datatypes dp$p block_sbp
R 1522 5 374 datatypes dp$o block_sbp
R 1526 5 378 datatypes dm block_sbp
R 1527 5 379 datatypes dm$sd block_sbp
R 1528 5 380 datatypes dm$p block_sbp
R 1529 5 381 datatypes dm$o block_sbp
R 1533 25 385 datatypes block_type
R 1534 5 386 datatypes id block_type
R 1535 5 387 datatypes physics block_type
R 1536 5 388 datatypes fd_type block_type
R 1537 5 389 datatypes order block_type
R 1538 5 390 datatypes nb block_type
R 1539 5 391 datatypes i block_type
R 1540 5 392 datatypes g block_type
R 1541 5 393 datatypes m block_type
R 1542 5 394 datatypes f block_type
R 1543 5 395 datatypes mt block_type
R 1544 5 396 datatypes p block_type
R 1545 5 397 datatypes b block_type
R 1546 5 398 datatypes boundary_vars block_type
R 1547 5 399 datatypes pmlb block_type
R 1548 5 400 datatypes tau0 block_type
R 1549 5 401 datatypes rho_s_p block_type
R 1550 5 402 datatypes sum block_type
R 1551 5 403 datatypes dx block_type
R 1554 25 406 datatypes iface_type
R 1555 5 407 datatypes id iface_type
R 1556 5 408 datatypes im iface_type
R 1557 5 409 datatypes ip iface_type
R 1558 5 410 datatypes direction iface_type
R 1562 5 414 datatypes v iface_type
R 1563 5 415 datatypes v$sd iface_type
R 1564 5 416 datatypes v$p iface_type
R 1565 5 417 datatypes v$o iface_type
R 1567 5 419 datatypes dv iface_type
R 1571 5 423 datatypes dv$sd iface_type
R 1572 5 424 datatypes dv$p iface_type
R 1573 5 425 datatypes dv$o iface_type
R 1578 5 430 datatypes t iface_type
R 1579 5 431 datatypes t$sd iface_type
R 1580 5 432 datatypes t$p iface_type
R 1581 5 433 datatypes t$o iface_type
R 1586 5 438 datatypes s iface_type
R 1587 5 439 datatypes s$sd iface_type
R 1588 5 440 datatypes s$p iface_type
R 1589 5 441 datatypes s$o iface_type
R 1591 5 443 datatypes ds iface_type
R 1595 5 447 datatypes ds$sd iface_type
R 1596 5 448 datatypes ds$p iface_type
R 1597 5 449 datatypes ds$o iface_type
R 1602 5 454 datatypes w iface_type
R 1603 5 455 datatypes w$sd iface_type
R 1604 5 456 datatypes w$p iface_type
R 1605 5 457 datatypes w$o iface_type
R 1607 5 459 datatypes dw iface_type
R 1611 5 463 datatypes dw$sd iface_type
R 1612 5 464 datatypes dw$p iface_type
R 1613 5 465 datatypes dw$o iface_type
R 1618 5 470 datatypes svel iface_type
R 1619 5 471 datatypes svel$sd iface_type
R 1620 5 472 datatypes svel$p iface_type
R 1621 5 473 datatypes svel$o iface_type
R 1626 5 478 datatypes trup iface_type
R 1627 5 479 datatypes trup$sd iface_type
R 1628 5 480 datatypes trup$p iface_type
R 1629 5 481 datatypes trup$o iface_type
R 1631 5 483 datatypes ii iface_type
R 1634 25 486 datatypes fault_type
R 1635 5 487 datatypes handles fault_type
R 1636 5 488 datatypes array_s fault_type
R 1640 5 492 datatypes time_rup fault_type
R 1641 5 493 datatypes time_rup$sd fault_type
R 1642 5 494 datatypes time_rup$p fault_type
R 1643 5 495 datatypes time_rup$o fault_type
R 1648 5 500 datatypes w fault_type
R 1649 5 501 datatypes w$sd fault_type
R 1650 5 502 datatypes w$p fault_type
R 1651 5 503 datatypes w$o fault_type
R 1656 5 508 datatypes slip fault_type
R 1657 5 509 datatypes slip$sd fault_type
R 1658 5 510 datatypes slip$p fault_type
R 1659 5 511 datatypes slip$o fault_type
R 1664 5 516 datatypes svel fault_type
R 1665 5 517 datatypes svel$sd fault_type
R 1666 5 518 datatypes svel$p fault_type
R 1667 5 519 datatypes svel$o fault_type
R 1672 5 524 datatypes u_pluspres fault_type
R 1673 5 525 datatypes u_pluspres$sd fault_type
R 1674 5 526 datatypes u_pluspres$p fault_type
R 1675 5 527 datatypes u_pluspres$o fault_type
R 1677 5 529 datatypes v_pluspres fault_type
R 1681 5 533 datatypes v_pluspres$sd fault_type
R 1682 5 534 datatypes v_pluspres$p fault_type
R 1683 5 535 datatypes v_pluspres$o fault_type
R 1685 5 537 datatypes uhat_pluspres fault_type
R 1689 5 541 datatypes uhat_pluspres$sd fault_type
R 1690 5 542 datatypes uhat_pluspres$p fault_type
R 1691 5 543 datatypes uhat_pluspres$o fault_type
R 1693 5 545 datatypes vhat_pluspres fault_type
R 1697 5 549 datatypes vhat_pluspres$sd fault_type
R 1698 5 550 datatypes vhat_pluspres$p fault_type
R 1699 5 551 datatypes vhat_pluspres$o fault_type
R 1710 25 562 datatypes seismogram_type
R 1711 5 563 datatypes output_exact_moment seismogram_type
R 1712 5 564 datatypes output_seismograms seismogram_type
R 1713 5 565 datatypes output_fields_block1 seismogram_type
R 1714 5 566 datatypes output_fields_block2 seismogram_type
R 1715 5 567 datatypes stride_fields seismogram_type
R 1716 5 568 datatypes file_unit_block1 seismogram_type
R 1717 5 569 datatypes file_unit_block2 seismogram_type
R 1718 5 570 datatypes nstations seismogram_type
R 1719 5 571 datatypes block_num seismogram_type
R 1721 5 573 datatypes i seismogram_type
R 1722 5 574 datatypes i$sd seismogram_type
R 1723 5 575 datatypes i$p seismogram_type
R 1724 5 576 datatypes i$o seismogram_type
R 1727 5 579 datatypes j seismogram_type
R 1728 5 580 datatypes j$sd seismogram_type
R 1729 5 581 datatypes j$p seismogram_type
R 1730 5 582 datatypes j$o seismogram_type
R 1732 5 584 datatypes k seismogram_type
R 1734 5 586 datatypes k$sd seismogram_type
R 1735 5 587 datatypes k$p seismogram_type
R 1736 5 588 datatypes k$o seismogram_type
R 1738 5 590 datatypes file_unit seismogram_type
R 1740 5 592 datatypes file_unit$sd seismogram_type
R 1741 5 593 datatypes file_unit$p seismogram_type
R 1742 5 594 datatypes file_unit$o seismogram_type
R 1745 5 597 datatypes i_phys seismogram_type
R 1746 5 598 datatypes i_phys$sd seismogram_type
R 1747 5 599 datatypes i_phys$p seismogram_type
R 1748 5 600 datatypes i_phys$o seismogram_type
R 1750 5 602 datatypes j_phys seismogram_type
R 1752 5 604 datatypes j_phys$sd seismogram_type
R 1753 5 605 datatypes j_phys$p seismogram_type
R 1754 5 606 datatypes j_phys$o seismogram_type
R 1756 5 608 datatypes k_phys seismogram_type
R 1758 5 610 datatypes k_phys$sd seismogram_type
R 1759 5 611 datatypes k_phys$p seismogram_type
R 1760 5 612 datatypes k_phys$o seismogram_type
R 1773 25 625 datatypes domain_type
R 1774 5 626 datatypes nblocks domain_type
R 1775 5 627 datatypes nifaces domain_type
R 1776 5 628 datatypes w_stride domain_type
R 1777 5 629 datatypes dt domain_type
R 1778 5 630 datatypes t domain_type
R 1779 5 631 datatypes t_final domain_type
R 1780 5 632 datatypes cfl domain_type
R 1781 5 633 datatypes topo domain_type
R 1782 5 634 datatypes nt domain_type
R 1784 5 636 datatypes b domain_type
R 1785 5 637 datatypes b$sd domain_type
R 1786 5 638 datatypes b$p domain_type
R 1787 5 639 datatypes b$o domain_type
R 1790 5 642 datatypes i domain_type
R 1791 5 643 datatypes i$sd domain_type
R 1792 5 644 datatypes i$p domain_type
R 1793 5 645 datatypes i$o domain_type
R 1795 5 647 datatypes fault domain_type
R 1796 5 648 datatypes mms_vars domain_type
R 1797 5 649 datatypes name domain_type
R 1798 5 650 datatypes problem domain_type
R 1799 5 651 datatypes response domain_type
R 1800 5 652 datatypes plastic_model domain_type
R 1801 5 653 datatypes coupling domain_type
R 1802 5 654 datatypes fd_type domain_type
R 1803 5 655 datatypes type_of_mesh domain_type
R 1804 5 656 datatypes mesh_source domain_type
R 1805 5 657 datatypes material_source domain_type
R 1806 5 658 datatypes w_fault domain_type
R 1807 5 659 datatypes output_fault_topo domain_type
R 1808 5 660 datatypes interpol domain_type
R 1809 5 661 datatypes use_topography domain_type
R 1810 5 662 datatypes mollify_source domain_type
R 1811 5 663 datatypes order domain_type
R 1812 5 664 datatypes seismometers domain_type
R 1814 5 666 datatypes seismometers$sd domain_type
R 1815 5 667 datatypes seismometers$p domain_type
R 1816 5 668 datatypes seismometers$o domain_type
R 1818 5 670 datatypes slicer domain_type
S 1843 23 5 0 0 0 1848 624 13245 0 0 A 0 0 0 0 B 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 init_pml
S 1844 1 3 3 0 727 1 1843 10679 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 b
S 1845 1 3 1 0 339 1 1843 10674 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 g
S 1846 1 3 1 0 6 1 1843 10655 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 id
S 1847 1 3 1 0 6 1 1843 13167 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 npml
S 1848 14 5 0 0 0 1 1843 13245 0 400000 A 0 0 0 0 B 0 11 0 0 0 0 0 213 4 0 0 0 0 0 0 0 0 0 0 0 0 11 0 624 0 0 0 0 init_pml init_pml 
F 1848 4 1844 1845 1846 1847
A 98 2 0 0 0 7 638 0 0 0 98 0 0 0 0 0 0 0 0 0 0 0
A 120 2 0 0 62 7 647 0 0 0 120 0 0 0 0 0 0 0 0 0 0 0
A 160 2 0 0 92 7 651 0 0 0 160 0 0 0 0 0 0 0 0 0 0 0
A 728 2 0 0 108 7 1146 0 0 0 728 0 0 0 0 0 0 0 0 0 0 0
A 976 2 0 0 641 7 1147 0 0 0 976 0 0 0 0 0 0 0 0 0 0 0
Z
T 1161 339 0 0 0 0
A 1175 7 375 0 1 2 1
A 1174 7 0 160 1 10 1
A 1184 7 377 0 1 2 1
A 1183 7 0 160 1 10 1
A 1193 7 379 0 1 2 1
A 1192 7 0 160 1 10 1
A 1202 7 381 0 1 2 1
A 1201 7 0 160 1 10 1
A 1210 7 383 0 1 2 1
A 1209 7 0 120 1 10 0
T 1215 388 0 0 0 0
A 1222 7 400 0 1 2 1
A 1221 7 0 160 1 10 0
T 1227 405 0 0 0 0
A 1235 7 420 0 1 2 1
A 1234 7 0 160 1 10 0
T 1240 425 0 0 0 0
A 1247 7 443 0 1 2 1
A 1246 7 0 160 1 10 1
A 1256 7 445 0 1 2 1
A 1255 7 0 160 1 10 0
T 1261 450 0 0 0 0
A 1267 7 522 0 1 2 1
A 1266 7 0 120 1 10 1
A 1275 7 524 0 1 2 1
A 1274 7 0 120 1 10 1
A 1283 7 526 0 1 2 1
A 1282 7 0 120 1 10 1
A 1291 7 528 0 1 2 1
A 1290 7 0 120 1 10 1
A 1299 7 530 0 1 2 1
A 1298 7 0 120 1 10 1
A 1307 7 532 0 1 2 1
A 1306 7 0 120 1 10 1
A 1315 7 534 0 1 2 1
A 1314 7 0 120 1 10 1
A 1323 7 536 0 1 2 1
A 1322 7 0 120 1 10 1
A 1331 7 538 0 1 2 1
A 1330 7 0 120 1 10 1
A 1339 7 540 0 1 2 1
A 1338 7 0 120 1 10 1
A 1347 7 542 0 1 2 1
A 1346 7 0 120 1 10 0
T 1361 556 0 0 0 0
A 1366 7 684 0 1 2 1
A 1365 7 0 728 1 10 1
A 1372 7 686 0 1 2 1
A 1371 7 0 728 1 10 1
A 1378 7 688 0 1 2 1
A 1377 7 0 728 1 10 1
A 1384 7 690 0 1 2 1
A 1383 7 0 728 1 10 1
A 1390 7 692 0 1 2 1
A 1389 7 0 728 1 10 1
A 1396 7 694 0 1 2 1
A 1395 7 0 728 1 10 1
A 1402 7 696 0 1 2 1
A 1401 7 0 728 1 10 1
A 1408 7 698 0 1 2 1
A 1407 7 0 728 1 10 1
A 1414 7 700 0 1 2 1
A 1413 7 0 728 1 10 1
A 1420 7 702 0 1 2 1
A 1419 7 0 728 1 10 1
A 1426 7 704 0 1 2 1
A 1425 7 0 728 1 10 1
A 1432 7 706 0 1 2 1
A 1431 7 0 728 1 10 1
A 1438 7 708 0 1 2 1
A 1437 7 0 728 1 10 1
A 1444 7 710 0 1 2 1
A 1443 7 0 728 1 10 1
A 1450 7 712 0 1 2 1
A 1449 7 0 728 1 10 1
A 1456 7 714 0 1 2 1
A 1455 7 0 728 1 10 1
A 1462 7 716 0 1 2 1
A 1461 7 0 728 1 10 1
A 1471 7 718 0 1 2 1
A 1470 7 0 160 1 10 1
A 1477 7 720 0 1 2 1
A 1476 7 0 728 1 10 1
A 1483 7 722 0 1 2 1
A 1482 7 0 728 1 10 0
T 1491 727 0 0 0 0
A 1501 7 745 0 1 2 1
A 1500 7 0 160 1 10 1
A 1510 7 747 0 1 2 1
A 1509 7 0 160 1 10 0
T 1515 752 0 0 0 0
A 1521 7 770 0 1 2 1
A 1520 7 0 98 1 10 1
A 1528 7 772 0 1 2 1
A 1527 7 0 98 1 10 0
T 1533 777 0 3 0 0
T 1540 339 0 3 0 1
A 1175 7 375 0 1 2 1
A 1174 7 0 160 1 10 1
A 1184 7 377 0 1 2 1
A 1183 7 0 160 1 10 1
A 1193 7 379 0 1 2 1
A 1192 7 0 160 1 10 1
A 1202 7 381 0 1 2 1
A 1201 7 0 160 1 10 1
A 1210 7 383 0 1 2 1
A 1209 7 0 120 1 10 0
T 1541 388 0 3 0 1
A 1222 7 400 0 1 2 1
A 1221 7 0 160 1 10 0
T 1542 425 0 3 0 1
A 1247 7 443 0 1 2 1
A 1246 7 0 160 1 10 1
A 1256 7 445 0 1 2 1
A 1255 7 0 160 1 10 0
T 1543 556 0 3 0 1
A 1366 7 684 0 1 2 1
A 1365 7 0 728 1 10 1
A 1372 7 686 0 1 2 1
A 1371 7 0 728 1 10 1
A 1378 7 688 0 1 2 1
A 1377 7 0 728 1 10 1
A 1384 7 690 0 1 2 1
A 1383 7 0 728 1 10 1
A 1390 7 692 0 1 2 1
A 1389 7 0 728 1 10 1
A 1396 7 694 0 1 2 1
A 1395 7 0 728 1 10 1
A 1402 7 696 0 1 2 1
A 1401 7 0 728 1 10 1
A 1408 7 698 0 1 2 1
A 1407 7 0 728 1 10 1
A 1414 7 700 0 1 2 1
A 1413 7 0 728 1 10 1
A 1420 7 702 0 1 2 1
A 1419 7 0 728 1 10 1
A 1426 7 704 0 1 2 1
A 1425 7 0 728 1 10 1
A 1432 7 706 0 1 2 1
A 1431 7 0 728 1 10 1
A 1438 7 708 0 1 2 1
A 1437 7 0 728 1 10 1
A 1444 7 710 0 1 2 1
A 1443 7 0 728 1 10 1
A 1450 7 712 0 1 2 1
A 1449 7 0 728 1 10 1
A 1456 7 714 0 1 2 1
A 1455 7 0 728 1 10 1
A 1462 7 716 0 1 2 1
A 1461 7 0 728 1 10 1
A 1471 7 718 0 1 2 1
A 1470 7 0 160 1 10 1
A 1477 7 720 0 1 2 1
A 1476 7 0 728 1 10 1
A 1483 7 722 0 1 2 1
A 1482 7 0 728 1 10 0
T 1544 405 0 3 0 1
A 1235 7 420 0 1 2 1
A 1234 7 0 160 1 10 0
T 1545 450 0 976 0 1
A 1267 7 522 0 1 2 1
A 1266 7 0 120 1 10 1
A 1275 7 524 0 1 2 1
A 1274 7 0 120 1 10 1
A 1283 7 526 0 1 2 1
A 1282 7 0 120 1 10 1
A 1291 7 528 0 1 2 1
A 1290 7 0 120 1 10 1
A 1299 7 530 0 1 2 1
A 1298 7 0 120 1 10 1
A 1307 7 532 0 1 2 1
A 1306 7 0 120 1 10 1
A 1315 7 534 0 1 2 1
A 1314 7 0 120 1 10 1
A 1323 7 536 0 1 2 1
A 1322 7 0 120 1 10 1
A 1331 7 538 0 1 2 1
A 1330 7 0 120 1 10 1
A 1339 7 540 0 1 2 1
A 1338 7 0 120 1 10 1
A 1347 7 542 0 1 2 1
A 1346 7 0 120 1 10 0
T 1547 727 0 976 0 1
A 1501 7 745 0 1 2 1
A 1500 7 0 160 1 10 1
A 1510 7 747 0 1 2 1
A 1509 7 0 160 1 10 0
T 1551 752 0 3 0 0
A 1521 7 770 0 1 2 1
A 1520 7 0 98 1 10 1
A 1528 7 772 0 1 2 1
A 1527 7 0 98 1 10 0
T 1554 795 0 0 0 0
A 1564 7 855 0 1 2 1
A 1563 7 0 120 1 10 1
A 1572 7 857 0 1 2 1
A 1571 7 0 120 1 10 1
A 1580 7 859 0 1 2 1
A 1579 7 0 120 1 10 1
A 1588 7 861 0 1 2 1
A 1587 7 0 120 1 10 1
A 1596 7 863 0 1 2 1
A 1595 7 0 120 1 10 1
A 1604 7 865 0 1 2 1
A 1603 7 0 120 1 10 1
A 1612 7 867 0 1 2 1
A 1611 7 0 120 1 10 1
A 1620 7 869 0 1 2 1
A 1619 7 0 120 1 10 1
A 1628 7 871 0 1 2 1
A 1627 7 0 120 1 10 0
T 1634 876 0 0 0 0
A 1642 7 933 0 1 2 1
A 1641 7 0 120 1 10 1
A 1650 7 935 0 1 2 1
A 1649 7 0 120 1 10 1
A 1658 7 937 0 1 2 1
A 1657 7 0 120 1 10 1
A 1666 7 939 0 1 2 1
A 1665 7 0 120 1 10 1
A 1674 7 941 0 1 2 1
A 1673 7 0 120 1 10 1
A 1682 7 943 0 1 2 1
A 1681 7 0 120 1 10 1
A 1690 7 945 0 1 2 1
A 1689 7 0 120 1 10 1
A 1698 7 947 0 1 2 1
A 1697 7 0 120 1 10 0
T 1710 961 0 0 0 0
A 1723 7 1015 0 1 2 1
A 1722 7 0 728 1 10 1
A 1729 7 1017 0 1 2 1
A 1728 7 0 728 1 10 1
A 1735 7 1019 0 1 2 1
A 1734 7 0 728 1 10 1
A 1741 7 1021 0 1 2 1
A 1740 7 0 728 1 10 1
A 1747 7 1023 0 1 2 1
A 1746 7 0 728 1 10 1
A 1753 7 1025 0 1 2 1
A 1752 7 0 728 1 10 1
A 1759 7 1027 0 1 2 1
A 1758 7 0 728 1 10 0
T 1773 1041 0 3 0 0
T 1795 876 0 3 0 0
A 1642 7 933 0 1 2 1
A 1641 7 0 120 1 10 1
A 1650 7 935 0 1 2 1
A 1649 7 0 120 1 10 1
A 1658 7 937 0 1 2 1
A 1657 7 0 120 1 10 1
A 1666 7 939 0 1 2 1
A 1665 7 0 120 1 10 1
A 1674 7 941 0 1 2 1
A 1673 7 0 120 1 10 1
A 1682 7 943 0 1 2 1
A 1681 7 0 120 1 10 1
A 1690 7 945 0 1 2 1
A 1689 7 0 120 1 10 1
A 1698 7 947 0 1 2 1
A 1697 7 0 120 1 10 0
Z
