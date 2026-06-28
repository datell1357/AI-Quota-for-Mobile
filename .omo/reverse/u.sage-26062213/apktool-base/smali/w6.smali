.class public final Lw6;
.super Lvb4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final b:Lsl0;

.field public final c:Lsb0;


# direct methods
.method public constructor <init>(Lsl0;Lsb0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvb4;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw6;->b:Lsl0;

    .line 5
    .line 6
    iput-object p2, p0, Lw6;->c:Lsb0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object p0, p0, Lw6;->b:Lsl0;

    .line 2
    .line 3
    const-class v0, Lx6;

    .line 4
    .line 5
    invoke-static {p0, v0}, Lbi4;->u(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lx6;

    .line 10
    .line 11
    check-cast p0, Lsl0;

    .line 12
    .line 13
    iget-object p0, p0, Lsl0;->c:Ll03;

    .line 14
    .line 15
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lk83;

    .line 20
    .line 21
    invoke-virtual {p0}, Lk83;->a()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
