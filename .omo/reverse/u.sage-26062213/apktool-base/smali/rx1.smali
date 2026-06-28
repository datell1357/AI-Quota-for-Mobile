.class public final Lrx1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:I

.field public final b:Ltf2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12c

    .line 5
    .line 6
    iput v0, p0, Lrx1;->a:I

    .line 7
    .line 8
    sget-object v0, Lis1;->a:Ltf2;

    .line 9
    .line 10
    new-instance v0, Ltf2;

    .line 11
    .line 12
    invoke-direct {v0}, Ltf2;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lrx1;->b:Ltf2;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Float;I)Lqx1;
    .locals 2

    .line 1
    new-instance v0, Lqx1;

    .line 2
    .line 3
    sget-object v1, Lny0;->c:Lmk0;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lqx1;-><init>(Ljava/lang/Float;Lmy0;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lrx1;->b:Ltf2;

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
