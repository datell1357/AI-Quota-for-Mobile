.class public final Ly31;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:Ly31;

.field public static final c:Ly31;


# instance fields
.field public final a:Lo14;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ly31;

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
    invoke-direct {v0, v1}, Ly31;-><init>(Lo14;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ly31;->b:Ly31;

    .line 19
    .line 20
    new-instance v0, Ly31;

    .line 21
    .line 22
    new-instance v1, Lo14;

    .line 23
    .line 24
    const/16 v7, 0x5f

    .line 25
    .line 26
    invoke-direct/range {v1 .. v7}, Lo14;-><init>(Lk41;Lsn3;Ll30;Lgg4;Ljava/util/LinkedHashMap;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ly31;-><init>(Lo14;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Ly31;->c:Ly31;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lo14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly31;->a:Lo14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ly31;)Ly31;
    .locals 8

    .line 1
    new-instance v0, Ly31;

    .line 2
    .line 3
    new-instance v1, Lo14;

    .line 4
    .line 5
    iget-object p1, p1, Ly31;->a:Lo14;

    .line 6
    .line 7
    iget-object v2, p1, Lo14;->a:Lk41;

    .line 8
    .line 9
    iget-object p0, p0, Ly31;->a:Lo14;

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
    iget-boolean v5, p1, Lo14;->d:Z

    .line 28
    .line 29
    if-nez v5, :cond_4

    .line 30
    .line 31
    iget-boolean v5, p0, Lo14;->d:Z

    .line 32
    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    const/4 v5, 0x0

    .line 37
    :goto_0
    move v6, v5

    .line 38
    goto :goto_2

    .line 39
    :cond_4
    :goto_1
    const/4 v5, 0x1

    .line 40
    goto :goto_0

    .line 41
    :goto_2
    iget-object p0, p0, Lo14;->e:Ljava/util/Map;

    .line 42
    .line 43
    iget-object p1, p1, Lo14;->e:Ljava/util/Map;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-direct {v7, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-direct/range {v1 .. v7}, Lo14;-><init>(Lk41;Lsn3;Ll30;Lgg4;ZLjava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Ly31;-><init>(Lo14;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ly31;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ly31;

    .line 6
    .line 7
    iget-object p1, p1, Ly31;->a:Lo14;

    .line 8
    .line 9
    iget-object p0, p0, Ly31;->a:Lo14;

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
    iget-object p0, p0, Ly31;->a:Lo14;

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
    .locals 7

    .line 1
    sget-object v0, Ly31;->b:Ly31;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly31;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "ExitTransition.None"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Ly31;->c:Ly31;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ly31;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p0, "ExitTransition.KeepUntilTransitionsFinished"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    iget-object p0, p0, Ly31;->a:Lo14;

    .line 24
    .line 25
    iget-object v0, p0, Lo14;->a:Lk41;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lk41;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v0, v1

    .line 36
    :goto_0
    iget-object v2, p0, Lo14;->b:Lsn3;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Lsn3;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move-object v2, v1

    .line 46
    :goto_1
    iget-object v3, p0, Lo14;->c:Ll30;

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    invoke-virtual {v3}, Ll30;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move-object v3, v1

    .line 56
    :goto_2
    iget-boolean p0, p0, Lo14;->d:Z

    .line 57
    .line 58
    const-string v4, ",\nSlide - "

    .line 59
    .line 60
    const-string v5, ",\nShrink - "

    .line 61
    .line 62
    const-string v6, "ExitTransition: \nFade - "

    .line 63
    .line 64
    invoke-static {v6, v0, v4, v2, v5}, Ldi0;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v2, ",\nScale - "

    .line 69
    .line 70
    const-string v4, ",\nKeepUntilTransitionsFinished - "

    .line 71
    .line 72
    invoke-static {v0, v3, v2, v1, v4}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
