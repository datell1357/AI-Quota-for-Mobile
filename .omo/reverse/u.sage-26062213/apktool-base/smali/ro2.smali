.class public final synthetic Lro2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final synthetic n:Lh22;

.field public final synthetic o:Lqp0;


# direct methods
.method public synthetic constructor <init>(Lh22;Lqp0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lro2;->n:Lh22;

    .line 5
    .line 6
    iput-object p2, p0, Lro2;->o:Lqp0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lro2;->n:Lh22;

    .line 2
    .line 3
    iget-object p0, p0, Lro2;->o:Lqp0;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lh22;->b(Lo22;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
