# This script assumes the h5 models is in models folder
import argparse

import tensorflow as tf


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-m", "--model", type=str, help="input path to h5 model")
    args = parser.parse_args()
    path_folder = args.model.split(".")
    path_folder = f"/tmp/{path_folder[0].split('/')[1]}/1/"
    tf.saved_model(args.model, path_folder)


if __name__ == "__main__":
    main()
