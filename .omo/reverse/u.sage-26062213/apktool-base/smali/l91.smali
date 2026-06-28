.class public final Ll91;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldb3;


# static fields
.field public static final a:Ll91;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll91;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll91;->a:Ll91;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lnd2;Z)Lnd2;
    .locals 1

    .line 1
    new-instance p0, Lnz1;

    .line 2
    .line 3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p2, v0}, Lnz1;-><init>(FZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
