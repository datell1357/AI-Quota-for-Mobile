.class public final synthetic Lmb5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lo75;

.field public final synthetic b:Lva5;

.field public final synthetic c:Lep1;


# direct methods
.method public synthetic constructor <init>(Lo75;Lva5;Lep1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmb5;->a:Lo75;

    .line 5
    .line 6
    iput-object p2, p0, Lmb5;->b:Lva5;

    .line 7
    .line 8
    iput-object p3, p0, Lmb5;->c:Lep1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    new-instance p1, Lqb5;

    .line 4
    .line 5
    iget-object v0, p0, Lmb5;->a:Lo75;

    .line 6
    .line 7
    iget-object v1, p0, Lmb5;->b:Lva5;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1}, Lqb5;-><init>(Lo75;Lva5;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lxa5;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lxa5;-><init>(Lqb5;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lmb5;->c:Lep1;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lep1;->n:Z

    .line 21
    .line 22
    return-object v0
.end method
