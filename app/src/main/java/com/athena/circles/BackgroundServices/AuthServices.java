package com.athena.circles.BackgroundServices;

import android.content.Context;
import android.widget.Toast;

import androidx.annotation.NonNull;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseAuthInvalidCredentialsException;
import com.google.firebase.auth.FirebaseAuthInvalidUserException;
import com.google.firebase.auth.FirebaseAuthUserCollisionException;
import com.google.firebase.auth.FirebaseAuthWeakPasswordException;

import org.jetbrains.annotations.NotNull;

public class AuthServices {
    private FirebaseAuth auth;
    Context context;

    public AuthServices (Context context){
        this.context = context;
        auth = FirebaseAuth.getInstance();
    }

    public String signIn (@NotNull String email, @NotNull String password){
        final String[] result = {""};
        auth.signInWithEmailAndPassword(email.trim(), password.trim()).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                if (!task.isSuccessful()){
                    try {
                        throw task.getException();
                    } catch (FirebaseAuthInvalidUserException e){
                        result[0] = "INVALID_EMAIL_ERROR";

                    } catch (FirebaseAuthInvalidCredentialsException e){
                        result[0] = "WRONG_PASSWORD_ERROR";
                    }catch (Exception e) {
                        e.printStackTrace();
                    }
                }else result[0] = task.getResult().getUser().getUid();
            }
        });
        return result[0];
    }

    public String signUp (@NotNull String email, @NotNull String password){
        final String[] result = {""};
        auth.createUserWithEmailAndPassword(email.trim(), password.trim()).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                if (!task.isSuccessful()){
                    try {
                        throw task.getException();
                    } catch (FirebaseAuthWeakPasswordException e){
                        result[0] = "Weak_PASSWORD_ERROR";

                    } catch (FirebaseAuthUserCollisionException e){
                        result[0] = "Email_EXISTS_ERROR";
                    }catch (Exception e) {
                        e.printStackTrace();
                    }
                }else result[0] = auth.getCurrentUser().getUid();
            }
        });
        return result[0];
    }

    public void recoverPassword (@NotNull String email){
        auth.sendPasswordResetEmail(email).addOnCompleteListener(new OnCompleteListener<Void>() {
            @Override
            public void onComplete(@NonNull Task<Void> task) {
                if (task.isSuccessful()){
                    Toast.makeText(context, "Email Sent Successfully!", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void sendConfirmationEmail(){
        auth.getCurrentUser().sendEmailVerification().addOnCompleteListener(new OnCompleteListener<Void>() {
            @Override
            public void onComplete(@NonNull Task<Void> task) {
                if (task.isSuccessful()) Toast.makeText(context, "Verification Email Sent Successfully!", Toast.LENGTH_SHORT).show();
            }
        });
    }
}
