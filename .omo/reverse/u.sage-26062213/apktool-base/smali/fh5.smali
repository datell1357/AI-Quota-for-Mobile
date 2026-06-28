.class public final Lfh5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final e:Ldh5;

.field public static final f:Leh5;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ldh5;

.field public d:Leh5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldh5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ldh5;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lfh5;->e:Ldh5;

    .line 8
    .line 9
    new-instance v0, Leh5;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Leh5;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lfh5;->f:Leh5;

    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 2

    sget-object v0, Lqn0;->g:Ldh5;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfh5;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    .line 38
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfh5;->b:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lfh5;->d:Leh5;

    .line 39
    iput-object v0, p0, Lfh5;->c:Ldh5;

    return-void
.end method

.method public constructor <init>(Lfh5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfh5;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lfh5;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v2, p1, Lfh5;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lfh5;->b:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Lfh5;->c:Ldh5;

    .line 29
    .line 30
    iput-object v0, p0, Lfh5;->c:Ldh5;

    .line 31
    .line 32
    iget-object p1, p1, Lfh5;->d:Leh5;

    .line 33
    .line 34
    iput-object p1, p0, Lfh5;->d:Leh5;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public a(Log5;Ljava/lang/Object;Lah5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfh5;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ldh5;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ldh5;->a(Log5;Ljava/lang/Object;Lah5;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lfh5;->c:Ldh5;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Ldh5;->a(Log5;Ljava/lang/Object;Lah5;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b(Log5;Ljava/util/Iterator;Lah5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfh5;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Leh5;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Leh5;->a(Log5;Ljava/util/Iterator;Lah5;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lfh5;->d:Leh5;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lfh5;->a:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Leh5;->a(Log5;Ljava/util/Iterator;Lah5;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, p1, v0, p3}, Lfh5;->a(Log5;Ljava/lang/Object;Lah5;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return-void
.end method
