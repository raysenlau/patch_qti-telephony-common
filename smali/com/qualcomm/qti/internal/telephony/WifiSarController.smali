.class public Lcom/qualcomm/qti/internal/telephony/WifiSarController;
.super Ljava/lang/Object;
.source "WifiSarController.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;


# static fields
.field private static mAudioReceiverState:I

.field private static mHotspotState:I

.field private static mMccState:I

.field private static mModemState:I

.field private static mPaternIndex:I

.field private static mSarSensorState:I

.field private static mSarSet:I

.field private static mWifiState:I


# instance fields
.field private final DSI0:I

.field private final DSI1:I

.field private final DSI2:I

.field private final DSI3:I

.field private final DSI4:I

.field private final DSI5:I

.field private final DSI6:I

.field private final DSI7:I

.field private final DSI8:I

.field private final DSI_SAR_DISABLE:I

.field private final PATERN1_DEVCIE_LIST:Ljava/lang/String;

.field private final PATERN2_DEVCIE_LIST:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x3

    sput v0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mMccState:I

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    .line 24
    sput v0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSet:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "WifiSarController"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->TAG:Ljava/lang/String;

    .line 14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI0:I

    .line 27
    const/4 v2, 0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI1:I

    .line 28
    const/4 v3, 0x2

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI2:I

    .line 29
    const/4 v4, 0x3

    iput v4, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI3:I

    .line 30
    const/4 v5, 0x4

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI4:I

    .line 31
    const/4 v5, 0x5

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI5:I

    .line 32
    const/4 v6, 0x6

    iput v6, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI6:I

    .line 33
    const/4 v6, 0x7

    iput v6, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI7:I

    .line 34
    const/16 v6, 0x8

    iput v6, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI8:I

    .line 35
    const/16 v7, 0x64

    iput v7, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI_SAR_DISABLE:I

    .line 37
    const-string v7, "grus"

    iput-object v7, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->PATERN1_DEVCIE_LIST:Ljava/lang/String;

    .line 38
    const-string v8, "andromeda"

    iput-object v8, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->PATERN2_DEVCIE_LIST:Ljava/lang/String;

    .line 45
    const-string v9, "WifiSarController init..."

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "device":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_0

    .line 49
    sput v2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 51
    sput v3, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    goto :goto_0

    .line 53
    :cond_1
    sput v4, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    .line 55
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", SAR patern: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mContext:Landroid/content/Context;

    .line 58
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    sget v7, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    if-eqz v7, :cond_2

    .line 60
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    move-result-object v7

    iput-object v7, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 63
    :cond_2
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    if-eqz v7, :cond_5

    .line 64
    sget v8, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    if-ne v8, v2, :cond_3

    .line 65
    invoke-virtual {v7, v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 66
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v2, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 67
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v4, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 68
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v3, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 69
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v5, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    goto :goto_1

    .line 70
    :cond_3
    if-ne v8, v3, :cond_4

    .line 71
    invoke-virtual {v7, v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 72
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v2, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 73
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v5, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    goto :goto_1

    .line 74
    :cond_4
    if-ne v8, v4, :cond_5

    .line 75
    invoke-virtual {v7, v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 76
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v2, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 77
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v3, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 78
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v5, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 79
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v6, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 83
    :cond_5
    :goto_1
    const-string v1, "WifiSarController init done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method private calculateSarSetPatern1()I
    .locals 4

    .line 142
    const/16 v0, 0x64

    .line 144
    .local v0, "sarSet":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    if-nez v1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-nez v1, :cond_0

    .line 146
    return v0

    .line 149
    :cond_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mAudioReceiverState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 150
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    if-ne v1, v2, :cond_1

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_2
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-ne v1, v2, :cond_3

    .line 156
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSensorState:I

    if-eqz v1, :cond_6

    .line 157
    const/4 v0, 0x4

    goto :goto_0

    .line 159
    :cond_3
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    if-ne v1, v2, :cond_5

    .line 160
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSensorState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 161
    const/4 v0, 0x3

    goto :goto_0

    .line 162
    :cond_4
    if-ne v1, v2, :cond_6

    .line 163
    const/4 v0, 0x2

    goto :goto_0

    .line 165
    :cond_5
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSensorState:I

    if-eqz v1, :cond_6

    .line 166
    const/4 v0, 0x0

    .line 169
    :cond_6
    :goto_0
    return v0
.end method

.method private calculateSarSetPatern2()I
    .locals 5

    .line 179
    const/16 v0, 0x64

    .line 181
    .local v0, "sarSet":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    if-nez v1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-nez v1, :cond_0

    .line 183
    return v0

    .line 186
    :cond_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-ne v1, v2, :cond_3

    .line 188
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 189
    .local v1, "staFreq":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 190
    .local v3, "sapBand":I
    const/16 v4, 0x1388

    if-ge v1, v4, :cond_1

    if-eq v3, v2, :cond_2

    :cond_1
    if-le v1, v4, :cond_3

    if-nez v3, :cond_3

    .line 192
    :cond_2
    return v2

    .line 196
    .end local v1    # "staFreq":I
    .end local v3    # "sapBand":I
    :cond_3
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mAudioReceiverState:I

    if-ne v1, v2, :cond_4

    .line 197
    const/4 v0, 0x0

    .line 200
    :cond_4
    return v0
.end method

.method private calculateSarSetPatern3()I
    .locals 4

    .line 218
    const/16 v0, 0x64

    .line 220
    .local v0, "sarSet":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    if-nez v1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-nez v1, :cond_0

    .line 222
    return v0

    .line 225
    :cond_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 226
    const/16 v0, 0x8

    goto :goto_4

    .line 227
    :cond_1
    sget v3, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mAudioReceiverState:I

    if-ne v3, v2, :cond_5

    .line 228
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mMccState:I

    if-ne v1, v2, :cond_3

    .line 229
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    goto :goto_4

    .line 231
    :cond_3
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    :goto_1
    move v0, v1

    goto :goto_4

    .line 233
    :cond_5
    if-nez v1, :cond_9

    .line 234
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mMccState:I

    if-ne v1, v2, :cond_7

    .line 235
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :cond_6
    const/4 v1, 0x4

    :goto_2
    move v0, v1

    goto :goto_4

    .line 237
    :cond_7
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    if-ne v1, v2, :cond_8

    const/4 v1, 0x7

    goto :goto_3

    :cond_8
    const/4 v1, 0x6

    :goto_3
    move v0, v1

    .line 241
    :cond_9
    :goto_4
    return v0
.end method

.method public static isNeeded()Z
    .locals 1

    .line 41
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/WifiManagerCompatible;->isNeeded()Z

    move-result v0

    return v0
.end method

.method private updateWifiSarSet()V
    .locals 3

    .line 114
    const/16 v0, 0x64

    .line 116
    .local v0, "sarSet":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->calculateSarSetPatern1()I

    move-result v0

    goto :goto_0

    .line 118
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->calculateSarSetPatern2()I

    move-result v0

    goto :goto_0

    .line 120
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->calculateSarSetPatern3()I

    move-result v0

    .line 124
    :cond_2
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSet:I

    if-eq v1, v0, :cond_3

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSARLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSarController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/qualcomm/qti/internal/telephony/WifiManagerCompatible;->setSARLimit(Landroid/content/Context;I)V

    .line 127
    sput v0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSet:I

    .line 129
    :cond_3
    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSarController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mMccState:I

    .line 106
    goto :goto_0

    .line 102
    :cond_1
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mAudioReceiverState:I

    .line 103
    goto :goto_0

    .line 99
    :cond_2
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSensorState:I

    .line 100
    goto :goto_0

    .line 96
    :cond_3
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    .line 97
    goto :goto_0

    .line 93
    :cond_4
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    .line 94
    goto :goto_0

    .line 90
    :cond_5
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    .line 91
    nop

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->updateWifiSarSet()V

    .line 111
    return-void
.end method
