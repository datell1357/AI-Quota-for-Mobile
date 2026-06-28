.class public final synthetic Lqe5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqi;


# instance fields
.field public final synthetic a:Lhg;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lhg;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqe5;->a:Lhg;

    .line 5
    .line 6
    iput p2, p0, Lqe5;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lqe5;->a:Lhg;

    .line 4
    .line 5
    iget p0, p0, Lqe5;->b:I

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lhg;->y(I)Ls0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
