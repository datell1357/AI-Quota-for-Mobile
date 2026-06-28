.class public final Lfw2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lld2;


# instance fields
.field public b:Lwc;

.field public c:Lly;

.field public d:Z

.field public final e:Lqd1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqd1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lqd1;-><init>(Lfw2;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfw2;->e:Lqd1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final e()Lpe1;
    .locals 0

    .line 1
    iget-object p0, p0, Lfw2;->b:Lwc;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "onTouchEvent"

    .line 7
    .line 8
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method
