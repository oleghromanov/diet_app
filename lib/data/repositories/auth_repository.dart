import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/errors/error_handler.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthRepository {
  AuthRepository();

  Future<Either<bool, AppError>> registerUser({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Left(true);
    } on FirebaseAuthException catch (error, stack) {
      if (error.code == 'weak-password') {
        return Right(AppError(errorMessage: 'The password provided is too weak.'));
      } else if (error.code == 'email-already-in-use') {
        return Right(AppError(errorMessage: 'The account already exists for that email.'));
      }
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    } catch (error, stack) {
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    }
  }

  Future<Either<bool, AppError>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Left(true);
    } on FirebaseAuthException catch (error, stack) {
      if (error.code == 'user-not-found') {
        return Right(AppError(errorMessage: 'No user found for that email.'));
      } else if (error.code == 'wrong-password') {
        return Right(AppError(errorMessage: 'Wrong password provided for that user.'));
      }
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    } catch (error, stack) {
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    }
  }

  Future<Either<bool, AppError>> setUser({required UserModel user}) async {
    try {
      final collection = FirebaseFirestore.instance.collection('users');
      await collection.doc(user.id).set(user.toJson(), SetOptions(merge: true));
      log('Firebase: User updated');
      return const Left(true);
    } catch (error, stack) {
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    }
  }

  Future<Either<UserModel, AppError>> getUser({
    required String email,
  }) async {
    try {
      final collection = FirebaseFirestore.instance.collection('users').withConverter<UserModel>(
            fromFirestore: (snapshots, _) => UserModel.fromJson(snapshots.data()!),
            toFirestore: (result, _) => result.toJson(),
          );
      final result = await collection.where('email', isEqualTo: email).get();
      return Left(result.docs.first.data());
    } catch (error, stack) {
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    }
  }
}
