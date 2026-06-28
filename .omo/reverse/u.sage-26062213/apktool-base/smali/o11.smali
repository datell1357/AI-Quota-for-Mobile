.class public final Lo11;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:Lo11;


# instance fields
.field public final a:Lo14;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lo11;

    .line 2
    .line 3
    new-instance v1, Lo14;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/16 v7, 0x7f

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-direct/range {v1 .. v7}, Lo14;-><init>(Lk41;Lsn3;Ll30;Lgg4;Ljava/util/LinkedHashMap;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lo11;-><init>(Lo14;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lo11;->b:Lo11;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lo14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo11;->a:Lo14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lo11;)Lo11;
    .locals 8

    .line 1
    new-instance v0, Lo11;

    .line 2
    .line 3
    new-instance v1, Lo14;

    .line 4
    .line 5
    iget-object p1, p1, Lo11;->a:Lo14;

    .line 6
    .line 7
    iget-object v2, p1, Lo14;->a:Lk41;

    .line 8
    .line 9
    iget-object p0, p0, Lo11;->a:Lo14;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lo14;->a:Lk41;

    .line 14
    .line 15
    :cond_0
    iget-object v3, p1, Lo14;->b:Lsn3;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Lo14;->b:Lsn3;

    .line 20
    .line 21
    :cond_1
    iget-object v4, p1, Lo14;->c:Ll30;

    .line 22
    .line 23
    if-nez v4, :cond_2

    .line 24
    .line 25
    iget-object v4, p0, Lo14;->c:Ll30;

    .line 26
    .line 27
    :cond_2
    iget-object p0, p0, Lo14;->e:Ljava/util/Map;

    .line 28
    .line 29
    iget-object p1, p1, Lo14;->e:Ljava/util/Map;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v6, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    const/16 v7, 0x20

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct/range {v1 .. v7}, Lo14;-><init>(Lk41;Lsn3;Ll30;Lgg4;Ljava/util/LinkedHashMap;I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lo11;-><init>(Lo14;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lo11;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lo11;

    .line 6
    .line 7
    iget-object p1, p1, Lo11;->a:Lo14;

    .line 8
    .line 9
    iget-object p0, p0, Lo11;->a:Lo14;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lo14;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lo11;->a:Lo14;

    .line 2
    .line 3
    invoke-virtual {p0}, Lo14;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lo11;->b:Lo11;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lo11;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "EnterTransition.None"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lo11;->a:Lo14;

    .line 13
    .line 14
    iget-object v0, p0, Lo14;->a:Lk41;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lk41;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, v1

    .line 25
    :goto_0
    iget-object v2, p0, Lo14;->b:Lsn3;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2}, Lsn3;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v2, v1

    .line 35
    :goto_1
    iget-object p0, p0, Lo14;->c:Ll30;

    .line 36
    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Ll30;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move-object p0, v1

    .line 45
    :goto_2
    const-string v3, ",\nSlide - "

    .line 46
    .line 47
    const-string v4, ",\nShrink - "

    .line 48
    .line 49
    const-string v5, "EnterTransition: \nFade - "

    .line 50
    .line 51
    invoke-static {v5, v0, v3, v2, v4}, Ldi0;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, ",\nScale - "

    .line 56
    .line 57
    invoke-static {v0, p0, v2, v1}, Ldi0;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method
