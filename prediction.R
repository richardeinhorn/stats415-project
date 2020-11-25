load(file="model.Rdata")

prediction <- function(df) {
  temp_df <- df[1440,]
  temp_df$Asset_1_BRet_3 <- (df$Asset_1[1440] - df$Asset_1[1437]) / df$Asset_1[1437]
  temp_df$Asset_1_BRet_10 <- (df$Asset_1[1440] - df$Asset_1[1430]) / df$Asset_1[1430]
  temp_df$Asset_1_BRet_30 <- (df$Asset_1[1440] - df$Asset_1[1410]) / df$Asset_1[1410]
  temp_df$Asset_2_BRet_3 <- (df$Asset_2[1440] - df$Asset_2[1437]) / df$Asset_2[1437]
  temp_df$Asset_2_BRet_10 <- (df$Asset_2[1440] - df$Asset_2[1430]) / df$Asset_2[1430]
  temp_df$Asset_2_BRet_30 <- (df$Asset_2[1440] - df$Asset_2[1410]) / df$Asset_2[1410]
  temp_df$Asset_3_BRet_3 <- (df$Asset_3[1440] - df$Asset_3[1437]) / df$Asset_3[1437]
  temp_df$Asset_3_BRet_10 <- (df$Asset_3[1440] - df$Asset_3[1430]) / df$Asset_3[1430]
  temp_df$Asset_3_BRet_30 <- (df$Asset_3[1440] - df$Asset_3[1410]) / df$Asset_3[1410]
  
  return (predict.lm(modl, temp_df)[[1]])
}