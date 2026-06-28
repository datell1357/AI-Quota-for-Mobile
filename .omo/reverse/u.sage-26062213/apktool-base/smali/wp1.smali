.class public abstract Lwp1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll6;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Llc0;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Llc0;-><init>(Lne1;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lwp1;->a:Llc0;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Lnd2;Lxs1;Lzp1;)Lnd2;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lxp1;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lxp1;-><init>(Lxs1;Lzp1;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
