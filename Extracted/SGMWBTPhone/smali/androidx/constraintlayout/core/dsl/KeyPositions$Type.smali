.class public final enum Landroidx/constraintlayout/core/dsl/KeyPositions$Type;
.super Ljava/lang/Enum;
.source "KeyPositions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/dsl/KeyPositions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/dsl/KeyPositions$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

.field public static final enum CARTESIAN:Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

.field public static final enum PATH:Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

.field public static final enum SCREEN:Landroidx/constraintlayout/core/dsl/KeyPositions$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 39
    new-instance v0, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    const-string v1, "CARTESIAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;->CARTESIAN:Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    .line 40
    new-instance v1, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    const-string v3, "SCREEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;->SCREEN:Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    .line 41
    new-instance v3, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    const-string v5, "PATH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;->PATH:Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 38
    sput-object v5, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;->$VALUES:[Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/KeyPositions$Type;
    .locals 1

    .line 38
    const-class v0, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/dsl/KeyPositions$Type;
    .locals 1

    .line 38
    sget-object v0, Landroidx/constraintlayout/core/dsl/KeyPositions$Type;->$VALUES:[Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/dsl/KeyPositions$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/dsl/KeyPositions$Type;

    return-object v0
.end method
