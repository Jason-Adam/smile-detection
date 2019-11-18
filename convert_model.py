# This script assumes the h5 models is in models folder
import argparse

import tensorflow as tf


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-m", "--model", type=str, help="input path to h5 model")
    args = parser.parse_args()
    path_folder = args.model.split(".")
    path_folder = path_folder[0].split("/")[1]
    save_folder = f"saved_model/{path_folder}/"
    model = tf.keras.models.load_model(args.model)
    tf.saved_model.save(model, save_folder)


if __name__ == "__main__":
    main()
