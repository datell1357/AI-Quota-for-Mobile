.class public final Lwe3;
.super Lnq0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Lwe3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lwe3;

    .line 2
    .line 3
    invoke-static {}, Ln44;->p0()Lso1;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lgg4;->G()Lso1;

    .line 7
    .line 8
    .line 9
    const-string v1, "generic_settings"

    .line 10
    .line 11
    const-string v2, "settings/{serviceType}"

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Lnq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lwe3;->c:Lwe3;

    .line 17
    .line 18
    return-void
.end method
