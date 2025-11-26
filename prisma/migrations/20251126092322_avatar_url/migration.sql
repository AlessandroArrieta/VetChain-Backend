-- DropForeignKey
ALTER TABLE "public"."Consultorio" DROP CONSTRAINT "Consultorio_centroId_fkey";

-- DropForeignKey
ALTER TABLE "public"."DeleteRequest" DROP CONSTRAINT "DeleteRequest_cuentaId_fkey";

-- DropForeignKey
ALTER TABLE "public"."EmailConfirmationToken" DROP CONSTRAINT "EmailConfirmationToken_cuentaId_fkey";

-- DropForeignKey
ALTER TABLE "public"."HistorialClinico" DROP CONSTRAINT "HistorialClinico_mascotaId_fkey";

-- DropForeignKey
ALTER TABLE "public"."HorarioSlot" DROP CONSTRAINT "HorarioSlot_veterinarioId_fkey";

-- DropForeignKey
ALTER TABLE "public"."PasswordResetToken" DROP CONSTRAINT "PasswordResetToken_cuentaId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Programacion" DROP CONSTRAINT "Programacion_veterinarioId_fkey";

-- DropForeignKey
ALTER TABLE "public"."ResumenMedico" DROP CONSTRAINT "ResumenMedico_mascotaId_fkey";

-- AlterTable
ALTER TABLE "Cuenta" ADD COLUMN     "avatarURL" TEXT;

-- AddForeignKey
ALTER TABLE "PasswordResetToken" ADD CONSTRAINT "PasswordResetToken_cuentaId_fkey" FOREIGN KEY ("cuentaId") REFERENCES "Cuenta"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EmailConfirmationToken" ADD CONSTRAINT "EmailConfirmationToken_cuentaId_fkey" FOREIGN KEY ("cuentaId") REFERENCES "Cuenta"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DeleteRequest" ADD CONSTRAINT "DeleteRequest_cuentaId_fkey" FOREIGN KEY ("cuentaId") REFERENCES "Cuenta"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Consultorio" ADD CONSTRAINT "Consultorio_centroId_fkey" FOREIGN KEY ("centroId") REFERENCES "CentroVeterinario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Programacion" ADD CONSTRAINT "Programacion_veterinarioId_fkey" FOREIGN KEY ("veterinarioId") REFERENCES "Veterinario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HorarioSlot" ADD CONSTRAINT "HorarioSlot_veterinarioId_fkey" FOREIGN KEY ("veterinarioId") REFERENCES "Veterinario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialClinico" ADD CONSTRAINT "HistorialClinico_mascotaId_fkey" FOREIGN KEY ("mascotaId") REFERENCES "Mascota"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ResumenMedico" ADD CONSTRAINT "ResumenMedico_mascotaId_fkey" FOREIGN KEY ("mascotaId") REFERENCES "Mascota"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
