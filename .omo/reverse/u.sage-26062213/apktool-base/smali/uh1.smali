.class public final Luh1;
.super Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/AbstractCollection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Luh1;->a:I

    iput-object p2, p0, Luh1;->b:Ljava/util/AbstractCollection;

    .line 10
    invoke-direct {p0}, Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Luh1;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Luh1;->b:Ljava/util/AbstractCollection;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final a(Lcom/google/api/client/googleapis/json/GoogleJsonError;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/api/client/googleapis/json/GoogleJsonError;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .line 1
    iget p0, p0, Luh1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p0, Lez3;->a:Lra3;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lra3;->f([Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :pswitch_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .line 1
    iget p2, p0, Luh1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Luh1;->b:Ljava/util/AbstractCollection;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/api/services/calendar/model/Event;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    sget-object p0, Lez3;->a:Lra3;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    check-cast p1, Lcom/google/api/services/calendar/model/Event;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    check-cast p0, Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
