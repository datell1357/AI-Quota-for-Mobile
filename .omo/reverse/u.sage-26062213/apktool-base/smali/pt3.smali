.class public final Lpt3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lst3;

.field public b:Llz1;

.field public final c:Lot3;

.field public final d:Lot3;

.field public final e:Lot3;


# direct methods
.method public constructor <init>(Lst3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpt3;->a:Lst3;

    .line 5
    .line 6
    new-instance p1, Lot3;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p1, p0, v0}, Lot3;-><init>(Lpt3;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lpt3;->c:Lot3;

    .line 13
    .line 14
    new-instance p1, Lot3;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, p0, v0}, Lot3;-><init>(Lpt3;I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lpt3;->d:Lot3;

    .line 21
    .line 22
    new-instance p1, Lot3;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, p0, v0}, Lot3;-><init>(Lpt3;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lpt3;->e:Lot3;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()Llz1;
    .locals 0

    .line 1
    iget-object p0, p0, Lpt3;->b:Llz1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "SubcomposeLayoutState is not attached to SubcomposeLayout"

    .line 7
    .line 8
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method
