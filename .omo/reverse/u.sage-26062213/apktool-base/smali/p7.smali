.class public final synthetic Lp7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:F

.field public final synthetic o:Lka0;


# direct methods
.method public synthetic constructor <init>(FLka0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lp7;->n:F

    .line 5
    .line 6
    iput-object p2, p0, Lp7;->o:Lka0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lag1;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 p2, 0x187

    .line 9
    .line 10
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget v0, p0, Lp7;->n:F

    .line 15
    .line 16
    iget-object p0, p0, Lp7;->o:Lka0;

    .line 17
    .line 18
    invoke-static {v0, p0, p1, p2}, Lx7;->b(FLka0;Lag1;I)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lt64;->a:Lt64;

    .line 22
    .line 23
    return-object p0
.end method
