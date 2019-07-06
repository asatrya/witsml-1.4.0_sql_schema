CREATE TABLE IF NOT EXISTS `witsml`.`mudLogs_parameters` (
  `uid` STRING NOT NULL,
  `uid_mudLogs` STRING NOT NULL,
  `type` STRING NOT NULL,
  `dTime` timestamp,
  `mdTop` FLOAT64 NOT NULL,
  `mdTop_uom` STRING NOT NULL,
  `mdBottom` FLOAT64,
  `mdBottom_uom` STRING,
  `text` STRING,
  `commonTime_dTimCreation` timestamp,
  `commonTime_dTimLastChange` timestamp
)