.class public Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;
.super Ljava/lang/Object;
.source "QtiDcRetryAlarmController.java"


# static fields
.field private static final DBG:Z = true

.field private static final INTENT_RETRY_ALARM_TAG:Ljava/lang/String; = "tag"

.field private static final INTENT_RETRY_ALARM_WHAT:Ljava/lang/String; = "what"


# instance fields
.field private mActionRetry:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLogTag:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRetryIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dc"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "QtiDcRac"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mLogTag:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mRetryIntent:Landroid/app/PendingIntent;

    .line 57
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    invoke-virtual {p2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mLogTag:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 90
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 91
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".action_retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    .line 94
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QtiDcRetryAlarmController: register for intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dcRac] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mRetryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mRetryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mRetryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mRetryIntent:Landroid/app/PendingIntent;

    .line 136
    :cond_0
    return-void
.end method

.method dispose()V
    .locals 2

    .line 105
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 108
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 109
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 110
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public startRetryAlarm(III)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "tag"    # I
    .param p3, "delay"    # I

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "what"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-string v1, "tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRetryAlarm: next attempt in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, p3, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mRetryIntent:Landroid/app/PendingIntent;

    .line 126
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mRetryIntent:Landroid/app/PendingIntent;

    .line 126
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [dcRac] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, " mAlaramManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, " mActionRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
