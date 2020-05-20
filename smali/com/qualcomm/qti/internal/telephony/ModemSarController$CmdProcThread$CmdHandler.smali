.class Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;
.super Landroid/os/Handler;
.source "ModemSarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmdHandler"
.end annotation


# static fields
.field private static final DYNAMIC_SAR_REQ_NUM:I = 0x800c9

.field private static final INT_SIZE:I = 0x4

.field private static final OEM_IDENTIFIER:Ljava/lang/String; = "QOEMHOOK"


# instance fields
.field private mResBuf:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 427
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 433
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/ModemSarController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/qti/internal/telephony/ModemSarController$1;

    .line 427
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;-><init>()V

    return-void
.end method

.method private DSI_Handle()V
    .locals 5

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SarSensorState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$500()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$600()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotspotState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFIState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$800()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHARGEState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$900()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DSI_History = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$900()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1302(I)I

    goto :goto_0

    .line 472
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1500()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$500()I

    move-result v1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$600()I

    move-result v2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$700()I

    move-result v3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$800()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1400(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1302(I)I

    .line 473
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DSI_Current is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1300()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1300()I

    move-result v0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1000()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmdMsgSend: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1300()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 476
    const v0, 0x800c9

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1300()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    goto :goto_1

    .line 478
    :cond_1
    const-string v0, "DSI value not change, will not send dsi to modem"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 480
    :goto_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1300()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1002(I)I

    .line 481
    return-void
.end method

.method private cmdMsgSend(II)V
    .locals 9
    .param p1, "reqNum"    # I
    .param p2, "para1"    # I

    .line 436
    :goto_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$000()Z

    move-result v0

    const-string v1, "ModemSarController"

    if-nez v0, :cond_0

    .line 437
    const-string v0, "Error: QcrilHook is not ready!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 440
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 441
    .local v0, "requestData":[B
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$400()Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 442
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 443
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 444
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$400()Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 446
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 447
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 448
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 449
    .local v5, "response":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 450
    .local v6, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 451
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mResBuf[0] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    aget-byte v3, v8, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v5    # "response":[B
    .end local v6    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 455
    :cond_1
    const-string v3, "mQcRilHook.sendQcRilHookMsg: Null Response"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 458
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerMessage, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "msg.arg1 = "

    const/4 v4, 0x1

    if-eq v0, v4, :cond_9

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$902(I)I

    .line 534
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$900()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$900()I

    move-result v0

    if-eq v4, v0, :cond_1

    .line 535
    const-string v0, "CHARGE SAR value is invalid, will force set it to 0"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 536
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$902(I)I

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    goto/16 :goto_0

    .line 540
    :cond_2
    const-string v0, "CHARGE SAR is not started, invalid event, will not send dsi"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 522
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$802(I)I

    .line 523
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$800()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$800()I

    move-result v0

    if-eq v4, v0, :cond_4

    .line 524
    const-string v0, "WIFIState is invalid, will force set it to 0"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 525
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$802(I)I

    .line 527
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    .line 528
    goto/16 :goto_0

    .line 511
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 512
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$702(I)I

    .line 513
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$700()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$700()I

    move-result v0

    if-eq v4, v0, :cond_6

    .line 514
    const-string v0, "HotspotState is invalid, will force set it to 0"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 515
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$702(I)I

    .line 517
    :cond_6
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    .line 518
    goto/16 :goto_0

    .line 501
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 502
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$602(I)I

    .line 503
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$600()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$600()I

    move-result v0

    if-eq v4, v0, :cond_8

    .line 504
    const-string v0, "ReceiverState is invalid, will force set it to 0"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 505
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$602(I)I

    .line 507
    :cond_8
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    .line 508
    goto :goto_0

    .line 487
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 489
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$502(I)I

    .line 490
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$500()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$500()I

    move-result v0

    if-eq v4, v0, :cond_a

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$500()I

    move-result v0

    if-eq v1, v0, :cond_a

    .line 491
    const-string v0, "sar sensor value is invalid, will force set it to 0"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 492
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$502(I)I

    .line 494
    :cond_a
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    goto :goto_0

    .line 496
    :cond_b
    const-string v0, "sar sensor is not started, invalid event, will not send dsi"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 498
    nop

    .line 544
    :goto_0
    return-void
.end method
