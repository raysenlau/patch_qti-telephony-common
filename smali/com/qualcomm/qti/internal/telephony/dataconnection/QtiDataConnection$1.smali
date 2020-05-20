.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;
.super Ljava/lang/Object;
.source "QtiDataConnection.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    .line 53
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResetEvent()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    const-string v1, "DataConnection onResetEvent, reset mPdpRejectCount"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 59
    const/high16 v1, 0x10000

    sput v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:I

    .line 60
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mDcRetryAlarmController:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->cancel()V

    .line 61
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 62
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;)I

    move-result v2

    const v3, 0x4001b

    invoke-virtual {v1, v3, v2, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 63
    return-void
.end method
