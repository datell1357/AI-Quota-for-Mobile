.class public final Lpx2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llm0;


# instance fields
.field public final a:Llm0;


# direct methods
.method public constructor <init>(Llm0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpx2;->a:Llm0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ldf1;Ldh0;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lox2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p1, v1, v2}, Lox2;-><init>(Ldf1;Ldh0;I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lpx2;->a:Llm0;

    .line 9
    .line 10
    invoke-interface {p0, v0, p2}, Llm0;->a(Ldf1;Ldh0;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final b()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lpx2;->a:Llm0;

    .line 2
    .line 3
    invoke-interface {p0}, Llm0;->b()La81;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
