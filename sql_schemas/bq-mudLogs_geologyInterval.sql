CREATE TABLE IF NOT EXISTS `witsml`.`mudLogs_geologyInterval` (
  `uid` STRING NOT NULL,
  `uid_mudLogs` STRING NOT NULL,
  `typeLithology` STRING NOT NULL,
  `mdTop` FLOAT64 NOT NULL,
  `mdTop_uom` STRING NOT NULL,
  `mdBottom` FLOAT64 NOT NULL,
  `mdBottom_uom` STRING NOT NULL,
  `dTim` timestamp,
  `tvdTop` FLOAT64,
  `tvdTop_uom` STRING,
  `tvdBase` FLOAT64,
  `tvdBase_uom` STRING,
  `ropAv` FLOAT64,
  `ropAv_uom` timestamp,
  `ropMn` FLOAT64,
  `ropMn_uom` STRING,
  `ropMx` FLOAT64,
  `ropMx_uom` STRING,
  `wobAv` FLOAT64,
  `wobAv_uom` STRING,
  `tqAv` FLOAT64,
  `tqAv_uom` STRING,
  `rpmAv` FLOAT64,
  `rpmAv_uom` STRING,
  `wtMudAv` FLOAT64,
  `wtMudAv_uom` STRING,
  `ecdTdAv` FLOAT64,
  `ecdTdAv_uom` STRING,
  `dxcAv` FLOAT64,
  `show_showRat` STRING,
  `show_stainColor` STRING,
  `show_stainDistr` STRING,
  `show_stainPc` FLOAT64,
  `show_stainPc_uom` STRING,
  `show_natFlorColor` STRING,
  `show_natFlorPc` FLOAT64,
  `show_natFlorPc_uom` STRING,
  `show_natFlorLevel` STRING,
  `show_natFlorDesc` STRING,
  `show_cutColor` STRING,
  `show_cutSpeed` STRING,
  `show_cutStrength` STRING,
  `show_cutForm` STRING,
  `show_cutLevel` STRING,
  `show_cutFlorColor` STRING,
  `show_cutFlorSpeed` STRING,
  `show_cutFlorStrength` STRING,
  `show_cutFlorForm` STRING,
  `show_cutFlorLevel` STRING,
  `show_residueColor` STRING,
  `show_showDesc` STRING,
  `show_impregnatedLitho` STRING,
  `show_odor` STRING,
  `chromatograph_dTim` timestamp,
  `chromatograph_mdTop` FLOAT64,
  `chromatograph_mdTop_uom` STRING,
  `chromatograph_mdBottom` FLOAT64,
  `chromatograph_mdBottom_uom` STRING,
  `chromatograph_wtMudIn` FLOAT64,
  `chromatograph_wtMudIn_uom` STRING,
  `chromatograph_wtMudOut` FLOAT64,
  `chromatograph_chromType` STRING,
  `chromatograph_eTimChromCycle` FLOAT64,
  `chromatograph_eTimChromCycle_uom` STRING,
  `chromatograph_chromIntRpt` timestamp,
  `chromatograph_methAv` FLOAT64,
  `chromatograph_methAv_uom` STRING,
  `chromatograph_methMn` FLOAT64,
  `chromatograph_methMn_uom` STRING,
  `chromatograph_methMx` FLOAT64,
  `chromatograph_methMx_uom` STRING,
  `chromatograph_ethAv` FLOAT64,
  `chromatograph_ethAv_uom` STRING,
  `chromatograph_ethMn` FLOAT64,
  `chromatograph_ethMn_uom` STRING,
  `chromatograph_ethMx` FLOAT64,
  `chromatograph_ethMx_uom` STRING,
  `chromatograph_propAv` FLOAT64,
  `chromatograph_propAv_uom` STRING,
  `chromatograph_propMn` FLOAT64,
  `chromatograph_propMn_uom` STRING,
  `chromatograph_propMx` FLOAT64,
  `chromatograph_propMx_uom` STRING,
  `chromatograph_ibutAv` FLOAT64,
  `chromatograph_ibutAv_uom` STRING,
  `chromatograph_ibutMn` FLOAT64,
  `chromatograph_ibutMn_uom` STRING,
  `chromatograph_ibutMx` FLOAT64,
  `chromatograph_ibutMx_uom` STRING,
  `chromatograph_nbutAv` FLOAT64,
  `chromatograph_nbutAv_uom` STRING,
  `chromatograph_nbutMn` FLOAT64,
  `chromatograph_nbutMn_uom` STRING,
  `chromatograph_nbutMx` FLOAT64,
  `chromatograph_nbutMx_uom` STRING,
  `chromatograph_ipentAv` FLOAT64,
  `chromatograph_ipentAv_uom` STRING,
  `chromatograph_ipentMn` FLOAT64,
  `chromatograph_ipentMn_uom` STRING,
  `chromatograph_ipentMx` FLOAT64,
  `chromatograph_ipentMx_uom` STRING,
  `chromatograph_npentAv` FLOAT64,
  `chromatograph_npentAv_uom` STRING,
  `chromatograph_npentMn` FLOAT64,
  `chromatograph_npentMn_uom` STRING,
  `chromatograph_npentMx` FLOAT64,
  `chromatograph_npentMx_uom` STRING,
  `chromatograph_epentAv` FLOAT64,
  `chromatograph_epentAv_uom` STRING,
  `chromatograph_epentMn` FLOAT64,
  `chromatograph_epentMn_uom` STRING,
  `chromatograph_epentMx` FLOAT64,
  `chromatograph_epentMx_uom` STRING,
  `chromatograph_ihexAv` FLOAT64,
  `chromatograph_ihexAv_uom` STRING,
  `chromatograph_ihexMn` FLOAT64,
  `chromatograph_ihexMn_uom` STRING,
  `chromatograph_ihexMx` FLOAT64,
  `chromatograph_ihexMx_uom` STRING,
  `chromatograph_nhexAv` FLOAT64,
  `chromatograph_nhexAv_uom` STRING,
  `chromatograph_nhexMn` FLOAT64,
  `chromatograph_nhexMn_uom` STRING,
  `chromatograph_nhexMx` FLOAT64,
  `chromatograph_nhexMx_uom` STRING,
  `chromatograph_co2Av` FLOAT64,
  `chromatograph_co2Av_uom` STRING,
  `chromatograph_co2Mn` FLOAT64,
  `chromatograph_co2Mn_uom` STRING,
  `chromatograph_co2Mx` FLOAT64,
  `chromatograph_co2Mx_uom` STRING,
  `chromatograph_h2sAv` FLOAT64,
  `chromatograph_h2sAv_uom` STRING,
  `chromatograph_h2sMn` FLOAT64,
  `chromatograph_h2sMn_uom` STRING,
  `chromatograph_h2sMx` FLOAT64,
  `chromatograph_h2sMx_uom` STRING,
  `chromatograph_acetylene` FLOAT64,
  `chromatograph_acetylene_uom` STRING,
  `mudGas_gasAv` FLOAT64,
  `mudGas_gasAv_uom` STRING,
  `mudGas_gasPeak` FLOAT64,
  `mudGas_gasPeak_uom` STRING,
  `mudGas_gasPeakType` STRING,
  `mudGas_gasBackgnd` FLOAT64,
  `mudGas_gasBackgnd_uom` STRING,
  `mudGas_gasConAv` FLOAT64,
  `mudGas_gasConAv_uom` STRING,
  `mudGas_gasConMx` FLOAT64,
  `mudGas_gasConMx_uom` STRING,
  `mudGas_gasTrip` FLOAT64,
  `mudGas_gasTrip_uom` STRING,
  `densBulk` FLOAT64,
  `densBulk_uom` STRING,
  `densShale` FLOAT64,
  `densShale_uom` STRING,
  `calcite` FLOAT64,
  `calcite_uom` STRING,
  `dolomite` FLOAT64,
  `dolomite_uom` STRING,
  `cec` FLOAT64,
  `cec_uom` STRING,
  `calcStab` FLOAT64,
  `calcStab_uom` STRING,
  `sizeMn` FLOAT64,
  `sizeMn_uom` STRING,
  `sizeMx` FLOAT64,
  `sizeMx_uom` STRING,
  `lenPlug` FLOAT64,
  `lenPlug_uom` STRING,
  `description` STRING,
  `cuttingFluid` STRING,
  `cleaningMethod` STRING,
  `dryingMethod` STRING,
  `commonTime_dTimCreation` timestamp,
  `commonTime_dTimLastChange` timestamp
);