.class public final Lbq4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lha5;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lxp4;->c:Lra3;

    .line 2
    .line 3
    iget-object v0, v0, Lra3;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsb5;

    .line 6
    .line 7
    new-instance v1, Lha5;

    .line 8
    .line 9
    const-string v2, "measurement.service.storage_consent_support_version"

    .line 10
    .line 11
    const-wide/32 v3, 0x31b50

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3, v4}, Lha5;-><init>(Ljava/lang/String;Lsb5;J)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lbq4;->a:Lha5;

    .line 18
    .line 19
    return-void
.end method
