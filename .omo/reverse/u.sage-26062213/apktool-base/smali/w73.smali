.class public final Lw73;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final A:Lmu0;

.field public final B:La14;

.field public final n:Lk63;

.field public final o:Ld03;

.field public final p:Ljava/lang/String;

.field public final q:I

.field public final r:Laj1;

.field public final s:Lkj1;

.field public final t:Ly73;

.field public final u:Ljp3;

.field public final v:Lw73;

.field public final w:Lw73;

.field public final x:Lw73;

.field public final y:J

.field public final z:J


# direct methods
.method public constructor <init>(Lk63;Ld03;Ljava/lang/String;ILaj1;Lkj1;Ly73;Ljp3;Lw73;Lw73;Lw73;JJLmu0;La14;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lw73;->n:Lk63;

    .line 20
    .line 21
    iput-object p2, p0, Lw73;->o:Ld03;

    .line 22
    .line 23
    iput-object p3, p0, Lw73;->p:Ljava/lang/String;

    .line 24
    .line 25
    iput p4, p0, Lw73;->q:I

    .line 26
    .line 27
    iput-object p5, p0, Lw73;->r:Laj1;

    .line 28
    .line 29
    iput-object p6, p0, Lw73;->s:Lkj1;

    .line 30
    .line 31
    iput-object p7, p0, Lw73;->t:Ly73;

    .line 32
    .line 33
    iput-object p8, p0, Lw73;->u:Ljp3;

    .line 34
    .line 35
    iput-object p9, p0, Lw73;->v:Lw73;

    .line 36
    .line 37
    iput-object p10, p0, Lw73;->w:Lw73;

    .line 38
    .line 39
    iput-object p11, p0, Lw73;->x:Lw73;

    .line 40
    .line 41
    iput-wide p12, p0, Lw73;->y:J

    .line 42
    .line 43
    iput-wide p14, p0, Lw73;->z:J

    .line 44
    .line 45
    move-object/from16 p1, p16

    .line 46
    .line 47
    iput-object p1, p0, Lw73;->A:Lmu0;

    .line 48
    .line 49
    move-object/from16 p1, p17

    .line 50
    .line 51
    iput-object p1, p0, Lw73;->B:La14;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final b()Lv73;
    .locals 3

    .line 1
    new-instance v0, Lv73;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lv73;->c:I

    .line 8
    .line 9
    sget-object v1, Ly73;->n:Lx73;

    .line 10
    .line 11
    iput-object v1, v0, Lv73;->g:Ly73;

    .line 12
    .line 13
    sget-object v1, La14;->e:Lpr3;

    .line 14
    .line 15
    iput-object v1, v0, Lv73;->o:La14;

    .line 16
    .line 17
    iget-object v1, p0, Lw73;->n:Lk63;

    .line 18
    .line 19
    iput-object v1, v0, Lv73;->a:Lk63;

    .line 20
    .line 21
    iget-object v1, p0, Lw73;->o:Ld03;

    .line 22
    .line 23
    iput-object v1, v0, Lv73;->b:Ld03;

    .line 24
    .line 25
    iget v1, p0, Lw73;->q:I

    .line 26
    .line 27
    iput v1, v0, Lv73;->c:I

    .line 28
    .line 29
    iget-object v1, p0, Lw73;->p:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, v0, Lv73;->d:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lw73;->r:Laj1;

    .line 34
    .line 35
    iput-object v1, v0, Lv73;->e:Laj1;

    .line 36
    .line 37
    iget-object v1, p0, Lw73;->s:Lkj1;

    .line 38
    .line 39
    invoke-virtual {v1}, Lkj1;->e()Ldh1;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lv73;->f:Ldh1;

    .line 44
    .line 45
    iget-object v1, p0, Lw73;->t:Ly73;

    .line 46
    .line 47
    iput-object v1, v0, Lv73;->g:Ly73;

    .line 48
    .line 49
    iget-object v1, p0, Lw73;->u:Ljp3;

    .line 50
    .line 51
    iput-object v1, v0, Lv73;->h:Ljp3;

    .line 52
    .line 53
    iget-object v1, p0, Lw73;->v:Lw73;

    .line 54
    .line 55
    iput-object v1, v0, Lv73;->i:Lw73;

    .line 56
    .line 57
    iget-object v1, p0, Lw73;->w:Lw73;

    .line 58
    .line 59
    iput-object v1, v0, Lv73;->j:Lw73;

    .line 60
    .line 61
    iget-object v1, p0, Lw73;->x:Lw73;

    .line 62
    .line 63
    iput-object v1, v0, Lv73;->k:Lw73;

    .line 64
    .line 65
    iget-wide v1, p0, Lw73;->y:J

    .line 66
    .line 67
    iput-wide v1, v0, Lv73;->l:J

    .line 68
    .line 69
    iget-wide v1, p0, Lw73;->z:J

    .line 70
    .line 71
    iput-wide v1, v0, Lv73;->m:J

    .line 72
    .line 73
    iget-object v1, p0, Lw73;->A:Lmu0;

    .line 74
    .line 75
    iput-object v1, v0, Lv73;->n:Lmu0;

    .line 76
    .line 77
    iget-object p0, p0, Lw73;->B:La14;

    .line 78
    .line 79
    iput-object p0, v0, Lv73;->o:La14;

    .line 80
    .line 81
    return-object v0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lw73;->t:Ly73;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly73;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Response{protocol="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lw73;->o:Ld03;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", code="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lw73;->q:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", message="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lw73;->p:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", url="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lw73;->n:Lk63;

    .line 39
    .line 40
    iget-object p0, p0, Lk63;->a:Lcn1;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 p0, 0x7d

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
