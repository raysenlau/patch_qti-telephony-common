.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;
.super Landroid/os/Handler;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 55
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x42029

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 61
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 62
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    .line 63
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 64
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 65
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAT CHANGED, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$002(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;I)I

    .line 73
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-void
.end method
