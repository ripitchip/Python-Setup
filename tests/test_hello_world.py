# test_hello_world.py
from src.main import main


def test_main():
    """Test the main function."""
    result = main()
    assert result == "Hello World!"
