from fastapi import APIRouter
import numpy

router = APIRouter()


@router.get('')
def hello_world() -> dict:
    return {'msg': 'Hello, World!'}

@router.get('/multiplied-matrix')
def get_multiplied_matrix() -> dict:
    first_matrix = numpy.random.rand(10, 10)
    second_matrix_b = numpy.random.rand(10, 10)

    multiplied_matrix = numpy.matmul(first_matrix, second_matrix_b)
    return {
        'multipliedMatrix': multiplied_matrix.tolist(),
    }
