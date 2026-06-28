.class public final Luq4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lda5;

.field public static final b:Lda5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lxp4;->c:Lra3;

    .line 2
    .line 3
    const-string v1, "45753512"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lra3;->o(Ljava/lang/String;Z)Lda5;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Luq4;->a:Lda5;

    .line 11
    .line 12
    const-string v1, "measurement.gbraid_campaign.stop_lgclid"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lra3;->o(Ljava/lang/String;Z)Lda5;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Luq4;->b:Lda5;

    .line 19
    .line 20
    return-void
.end method
