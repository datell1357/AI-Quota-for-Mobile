.class public final synthetic Lq53;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/util/BiConsumer;


# instance fields
.field public final synthetic a:Lxh1;


# direct methods
.method public synthetic constructor <init>(Lxh1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq53;->a:Lxh1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lq53;->a:Lxh1;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Lad0;

    .line 6
    .line 7
    iget-object v0, p0, Lxh1;->n:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ln03;

    .line 10
    .line 11
    invoke-interface {v0}, Ln03;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lg8;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p2, Lad0;->e:Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ge v2, v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p2, p2, Lad0;->b:Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v2, v3, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const-string v2, "choiceId"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :cond_4
    iget-object v3, p0, Lxh1;->o:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Ljava/util/Map;

    .line 62
    .line 63
    monitor-enter v3

    .line 64
    :try_start_0
    iget-object v4, p0, Lxh1;->o:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v4, Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    monitor-exit v3

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    iget-object p0, p0, Lxh1;->o:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    new-instance p0, Landroid/os/Bundle;

    .line 91
    .line 92
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "arm_key"

    .line 96
    .line 97
    invoke-virtual {p0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v3, "arm_value"

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string p1, "personalization_id"

    .line 110
    .line 111
    const-string p2, "personalizationId"

    .line 112
    .line 113
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p1, "arm_index"

    .line 121
    .line 122
    const-string p2, "armIndex"

    .line 123
    .line 124
    const/4 v3, -0x1

    .line 125
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    const-string p1, "group"

    .line 133
    .line 134
    const-string p2, "group"

    .line 135
    .line 136
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string p1, "fp"

    .line 144
    .line 145
    const-string p2, "personalization_assignment"

    .line 146
    .line 147
    check-cast v0, Lh8;

    .line 148
    .line 149
    invoke-virtual {v0, p1, p2, p0}, Lh8;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    new-instance p0, Landroid/os/Bundle;

    .line 153
    .line 154
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string p1, "_fpid"

    .line 158
    .line 159
    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string p1, "fp"

    .line 163
    .line 164
    const-string p2, "_fpc"

    .line 165
    .line 166
    invoke-virtual {v0, p1, p2, p0}, Lh8;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    throw p0
.end method
