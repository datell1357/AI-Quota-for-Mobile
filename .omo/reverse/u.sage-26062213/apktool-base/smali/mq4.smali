.class public final Lmq4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lda5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lxp4;->c:Lra3;

    .line 2
    .line 3
    const-string v1, "measurement.edpb.service"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lra3;->o(Ljava/lang/String;Z)Lda5;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lmq4;->a:Lda5;

    .line 11
    .line 12
    return-void
.end method
