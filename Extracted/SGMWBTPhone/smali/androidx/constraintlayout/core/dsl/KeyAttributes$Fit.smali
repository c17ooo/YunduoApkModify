.class public final enum Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;
.super Ljava/lang/Enum;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/dsl/KeyAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

.field public static final enum LINEAR:Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

.field public static final enum SPLINE:Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 49
    new-instance v0, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    const-string v1, "SPLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;->SPLINE:Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    .line 50
    new-instance v1, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    const-string v3, "LINEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;->LINEAR:Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 48
    sput-object v3, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;->$VALUES:[Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;
    .locals 1

    .line 48
    const-class v0, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;
    .locals 1

    .line 48
    sget-object v0, Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;->$VALUES:[Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/dsl/KeyAttributes$Fit;

    return-object v0
.end method
